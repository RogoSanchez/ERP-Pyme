part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String username) = _UsernameChanged;
  const factory LoginEvent.passwordChanged(String password) = _PasswordChanged;
  const factory LoginEvent.loginSubmitted() = _LoginSubmitted;
  const factory LoginEvent.signUpSubmitted() = _SignUpSubmitted;
}
