import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trabajadores/features/login/data/repositories/autentication_repository.dart';
import 'package:trabajadores/features/login/domain/entities/formz/password.dart';
import 'package:trabajadores/features/login/domain/entities/formz/username.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const _LoginState()) {
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_LoginSubmitted>(_onSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onUsernameChanged(_UsernameChanged event, Emitter<LoginState> emit) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([state.password, username]),
      ),
    );
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([password, state.username]),
      ),
    );
  }

  Future<void> _onSubmitted(
    _LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        debugPrint('Attempting login with: ${state.username.value}'); // Debug
        await _authenticationRepository.logIn(
          username: state.username.value,
          password: state.password.value,
        );
        debugPrint('Login successful in bloc'); // Debug
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } catch (e) {
        debugPrint('Login error in bloc: $e'); // Debug
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    }
  }
}
