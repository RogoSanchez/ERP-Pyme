part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticationSubscriptionRequested() =
      _AuthenticationSubscriptionRequested;
  const factory AuthEvent.authenticationLogoutPressed() =
      _AuthenticationLogoutPressed;
}
