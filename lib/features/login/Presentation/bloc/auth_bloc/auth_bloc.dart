import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pyme_erp/domain/di/di.dart';
import 'package:pyme_erp/features/login/data/repositories/autentication_repository.dart';
import 'package:pyme_erp/features/login/data/repositories/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
  }) : _authenticationRepository = authenticationRepository,
       super(const AuthState.unknownState()) {
    on<_AuthenticationSubscriptionRequested>(_onSubscriptionRequested);
    on<_AuthenticationLogoutPressed>(_onLogoutPressed);

    // Disparar el evento inmediatamente
    add(const AuthEvent.authenticationSubscriptionRequested());
  }

  final AuthenticationRepository _authenticationRepository;


  Future<void> _onSubscriptionRequested(
    _AuthenticationSubscriptionRequested event,
    Emitter<AuthState> emit,
  ) async {
    debugPrint('Subscribing to authentication status');
    await emit.forEach(
      _authenticationRepository.status,
      onData: (AuthenticationStatus status) {
        debugPrint('AuthBloc: Processing status: $status');
        switch (status) {
          case AuthenticationStatus.unauthenticated:
            debugPrint('Processing unauthenticated status');
            return const AuthState.unauthenticated();
          case AuthenticationStatus.authenticated:
            debugPrint('Processing authenticated status');
            final user = _tryGetUser();
            if (user != null) {
              debugPrint('User found: ${user.id}');
              return AuthState.authenticated(user: user);
            }
            debugPrint('No user found after authenticated status');
            return const AuthState.unauthenticated();
          case AuthenticationStatus.unknown:
            debugPrint('Processing unknown status');
            return const AuthState.unknownState();
        }
      },
    );
  }

  User? _tryGetUser() {
    try {
      return supabase.auth.currentUser;
    } catch (e) {
      debugPrint('Error getting user: $e');
      return null;
    }
  }

  void _onLogoutPressed(
    _AuthenticationLogoutPressed event,
    Emitter<AuthState> emit,
  ) {
    unawaited(supabase.auth.signOut());
    _authenticationRepository.logOut();
  }
}
