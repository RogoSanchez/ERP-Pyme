part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.unknownState({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
  }) = UnknownState;

  const factory AuthState.authenticated({
    @Default(AuthenticationStatus.authenticated) AuthenticationStatus status,
    required User user,
  }) = Authenticated;

  const factory AuthState.unauthenticated({
    @Default(AuthenticationStatus.unauthenticated) AuthenticationStatus status,
  }) = Unauthenticated;
  const factory AuthState.error({
    @Default(AuthenticationStatus.unauthenticated) AuthenticationStatus status,
  }) = Error;
}
