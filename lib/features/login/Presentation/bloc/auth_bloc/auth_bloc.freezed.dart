// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthenticationSubscriptionRequested value)?  authenticationSubscriptionRequested,TResult Function( _AuthenticationLogoutPressed value)?  authenticationLogoutPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthenticationSubscriptionRequested() when authenticationSubscriptionRequested != null:
return authenticationSubscriptionRequested(_that);case _AuthenticationLogoutPressed() when authenticationLogoutPressed != null:
return authenticationLogoutPressed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthenticationSubscriptionRequested value)  authenticationSubscriptionRequested,required TResult Function( _AuthenticationLogoutPressed value)  authenticationLogoutPressed,}){
final _that = this;
switch (_that) {
case _AuthenticationSubscriptionRequested():
return authenticationSubscriptionRequested(_that);case _AuthenticationLogoutPressed():
return authenticationLogoutPressed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthenticationSubscriptionRequested value)?  authenticationSubscriptionRequested,TResult? Function( _AuthenticationLogoutPressed value)?  authenticationLogoutPressed,}){
final _that = this;
switch (_that) {
case _AuthenticationSubscriptionRequested() when authenticationSubscriptionRequested != null:
return authenticationSubscriptionRequested(_that);case _AuthenticationLogoutPressed() when authenticationLogoutPressed != null:
return authenticationLogoutPressed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  authenticationSubscriptionRequested,TResult Function()?  authenticationLogoutPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthenticationSubscriptionRequested() when authenticationSubscriptionRequested != null:
return authenticationSubscriptionRequested();case _AuthenticationLogoutPressed() when authenticationLogoutPressed != null:
return authenticationLogoutPressed();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  authenticationSubscriptionRequested,required TResult Function()  authenticationLogoutPressed,}) {final _that = this;
switch (_that) {
case _AuthenticationSubscriptionRequested():
return authenticationSubscriptionRequested();case _AuthenticationLogoutPressed():
return authenticationLogoutPressed();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  authenticationSubscriptionRequested,TResult? Function()?  authenticationLogoutPressed,}) {final _that = this;
switch (_that) {
case _AuthenticationSubscriptionRequested() when authenticationSubscriptionRequested != null:
return authenticationSubscriptionRequested();case _AuthenticationLogoutPressed() when authenticationLogoutPressed != null:
return authenticationLogoutPressed();case _:
  return null;

}
}

}

/// @nodoc


class _AuthenticationSubscriptionRequested implements AuthEvent {
  const _AuthenticationSubscriptionRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationSubscriptionRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.authenticationSubscriptionRequested()';
}


}




/// @nodoc


class _AuthenticationLogoutPressed implements AuthEvent {
  const _AuthenticationLogoutPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationLogoutPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.authenticationLogoutPressed()';
}


}




/// @nodoc
mixin _$AuthState {

 AuthenticationStatus get status;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AuthState(status: $status)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 AuthenticationStatus status
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthenticationStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnknownState value)?  unknownState,TResult Function( Authenticated value)?  authenticated,TResult Function( Unauthenticated value)?  unauthenticated,TResult Function( Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnknownState() when unknownState != null:
return unknownState(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnknownState value)  unknownState,required TResult Function( Authenticated value)  authenticated,required TResult Function( Unauthenticated value)  unauthenticated,required TResult Function( Error value)  error,}){
final _that = this;
switch (_that) {
case UnknownState():
return unknownState(_that);case Authenticated():
return authenticated(_that);case Unauthenticated():
return unauthenticated(_that);case Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnknownState value)?  unknownState,TResult? Function( Authenticated value)?  authenticated,TResult? Function( Unauthenticated value)?  unauthenticated,TResult? Function( Error value)?  error,}){
final _that = this;
switch (_that) {
case UnknownState() when unknownState != null:
return unknownState(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AuthenticationStatus status)?  unknownState,TResult Function( AuthenticationStatus status,  User user)?  authenticated,TResult Function( AuthenticationStatus status)?  unauthenticated,TResult Function( AuthenticationStatus status)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnknownState() when unknownState != null:
return unknownState(_that.status);case Authenticated() when authenticated != null:
return authenticated(_that.status,_that.user);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that.status);case Error() when error != null:
return error(_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AuthenticationStatus status)  unknownState,required TResult Function( AuthenticationStatus status,  User user)  authenticated,required TResult Function( AuthenticationStatus status)  unauthenticated,required TResult Function( AuthenticationStatus status)  error,}) {final _that = this;
switch (_that) {
case UnknownState():
return unknownState(_that.status);case Authenticated():
return authenticated(_that.status,_that.user);case Unauthenticated():
return unauthenticated(_that.status);case Error():
return error(_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AuthenticationStatus status)?  unknownState,TResult? Function( AuthenticationStatus status,  User user)?  authenticated,TResult? Function( AuthenticationStatus status)?  unauthenticated,TResult? Function( AuthenticationStatus status)?  error,}) {final _that = this;
switch (_that) {
case UnknownState() when unknownState != null:
return unknownState(_that.status);case Authenticated() when authenticated != null:
return authenticated(_that.status,_that.user);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that.status);case Error() when error != null:
return error(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class UnknownState implements AuthState {
  const UnknownState({this.status = AuthenticationStatus.unknown});
  

@override@JsonKey() final  AuthenticationStatus status;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownStateCopyWith<UnknownState> get copyWith => _$UnknownStateCopyWithImpl<UnknownState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AuthState.unknownState(status: $status)';
}


}

/// @nodoc
abstract mixin class $UnknownStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $UnknownStateCopyWith(UnknownState value, $Res Function(UnknownState) _then) = _$UnknownStateCopyWithImpl;
@override @useResult
$Res call({
 AuthenticationStatus status
});




}
/// @nodoc
class _$UnknownStateCopyWithImpl<$Res>
    implements $UnknownStateCopyWith<$Res> {
  _$UnknownStateCopyWithImpl(this._self, this._then);

  final UnknownState _self;
  final $Res Function(UnknownState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(UnknownState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthenticationStatus,
  ));
}


}

/// @nodoc


class Authenticated implements AuthState {
  const Authenticated({this.status = AuthenticationStatus.authenticated, required this.user});
  

@override@JsonKey() final  AuthenticationStatus status;
 final  User user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedCopyWith<Authenticated> get copyWith => _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticated&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,status,user);

@override
String toString() {
  return 'AuthState.authenticated(status: $status, user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(Authenticated value, $Res Function(Authenticated) _then) = _$AuthenticatedCopyWithImpl;
@override @useResult
$Res call({
 AuthenticationStatus status, User user
});




}
/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated _self;
  final $Res Function(Authenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? user = null,}) {
  return _then(Authenticated(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthenticationStatus,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class Unauthenticated implements AuthState {
  const Unauthenticated({this.status = AuthenticationStatus.unauthenticated});
  

@override@JsonKey() final  AuthenticationStatus status;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthenticatedCopyWith<Unauthenticated> get copyWith => _$UnauthenticatedCopyWithImpl<Unauthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AuthState.unauthenticated(status: $status)';
}


}

/// @nodoc
abstract mixin class $UnauthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(Unauthenticated value, $Res Function(Unauthenticated) _then) = _$UnauthenticatedCopyWithImpl;
@override @useResult
$Res call({
 AuthenticationStatus status
});




}
/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(this._self, this._then);

  final Unauthenticated _self;
  final $Res Function(Unauthenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(Unauthenticated(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthenticationStatus,
  ));
}


}

/// @nodoc


class Error implements AuthState {
  const Error({this.status = AuthenticationStatus.unauthenticated});
  

@override@JsonKey() final  AuthenticationStatus status;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'AuthState.error(status: $status)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@override @useResult
$Res call({
 AuthenticationStatus status
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(Error(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthenticationStatus,
  ));
}


}

// dart format on
