part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(FormzSubmissionStatus.initial,) FormzSubmissionStatus status,
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
    @Default(null) LoginError? error, 
  }) = _LoginState;
}
enum LoginError {
  invalidCredentials,
  networkError,
  weakPassword,
  emailAlreadyExists,
  invalidEmail,
  tooManyRequests,
  unknown,
}

// Extensión para mensajes de error
extension LoginErrorExtension on LoginError {
  String get message {
    switch (this) {
      case LoginError.invalidCredentials:
        return 'Email o contraseña incorrectos';
      case LoginError.networkError:
        return 'Sin conexión a internet. Verifica tu conexión';
      case LoginError.weakPassword:
        return 'La contraseña debe tener al menos 6 caracteres';
      case LoginError.emailAlreadyExists:
        return 'Ya existe una cuenta con este email';
      case LoginError.invalidEmail:
        return 'El formato del email no es válido';
      case LoginError.tooManyRequests:
        return 'Demasiados intentos. Intenta más tarde';
      case LoginError.unknown:
        return 'Error inesperado. Intenta de nuevo';
    }
  }
}