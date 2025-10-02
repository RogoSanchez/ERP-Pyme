import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
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

    // Iniciar suscripción automáticamente
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
            return const AuthState.unauthenticated();
          case AuthenticationStatus.authenticated:
            final user = _tryGetUser();
            if (user != null) {
              return AuthState.authenticated(user: user);
            }
            return const AuthState.unauthenticated();
          case AuthenticationStatus.unknown:
            return const AuthState.unknownState();
        }
      },
    );
  }

  User? _tryGetUser() {
    try {
      final currentUser = Supabase.instance.client.auth.currentUser;
      return currentUser;
    } catch (_) {
      return null;
    }
  }

  void _onLogoutPressed(
    _AuthenticationLogoutPressed event,
    Emitter<AuthState> emit,
  ) async {
    await Supabase.instance.client.auth.signOut();
    emit(AuthState.unauthenticated());
  }
}
