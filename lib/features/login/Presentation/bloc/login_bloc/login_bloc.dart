import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pyme_erp/features/login/data/repositories/autentication_repository.dart';
import 'package:pyme_erp/features/login/domain/entities/formz/password.dart';
import 'package:pyme_erp/features/login/domain/entities/formz/username.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const _LoginState()) {
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_LoginSubmitted>(_onLoginSubmitted);
    on<_SignUpSubmitted>(_onSignUpSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onUsernameChanged(_UsernameChanged event, Emitter<LoginState> emit) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        status: FormzSubmissionStatus.initial,
        username: username,
        isValid: Formz.validate([state.password, username]),
        error: null,
      ),
    );
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        status: FormzSubmissionStatus.initial,
        password: password,
        isValid: Formz.validate([password, state.username]),
        error: null,
      ),
    );
  }

  Future<void> _onLoginSubmitted(
    _LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (!state.isValid) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress, error: null));

    try {
      await _authenticationRepository.logIn(
        username: state.username.value,
        password: state.password.value,
      );
      
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (error) {
      final loginError = _mapErrorToLoginError(error);
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          error: loginError,
        ),
      );
    }
  }

  Future<void> _onSignUpSubmitted(
    _SignUpSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (!state.isValid) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress, error: null));

    try {
      await _authenticationRepository.signUp(
        email: state.username.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (error) {
      final loginError = _mapErrorToLoginError(error);
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          error: loginError,
        ),
      );
    }
  }

  // Método para mapear errores de Supabase a errores específicos
  LoginError _mapErrorToLoginError(dynamic error) {
    final errorMessage = error.toString().toLowerCase();

    if (errorMessage.contains('failed host') ||
        errorMessage.contains('connection') ||
        errorMessage.contains('timeout')) {
      return LoginError.networkError;
    }

    if (errorMessage.contains('invalid_credentials') ||
        errorMessage.contains('invalid login credentials')) {
      return LoginError.invalidCredentials;
    }

    if (errorMessage.contains('weak_password') ||
        errorMessage.contains('password should be at least 6 characters')) {
      return LoginError.weakPassword;
    }

    if (errorMessage.contains('user_already_registered') ||
        errorMessage.contains('email address already exists')) {
      return LoginError.emailAlreadyExists;
    }

    if (errorMessage.contains('invalid_email') ||
        errorMessage.contains('invalid format')) {
      return LoginError.invalidEmail;
    }

    if (errorMessage.contains('too_many_requests') ||
        errorMessage.contains('rate limit')) {
      return LoginError.tooManyRequests;
    }

    return LoginError.unknown;
  }
}
