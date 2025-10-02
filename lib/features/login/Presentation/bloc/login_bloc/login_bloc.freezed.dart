// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UsernameChanged value)?  usernameChanged,TResult Function( _PasswordChanged value)?  passwordChanged,TResult Function( _LoginSubmitted value)?  loginSubmitted,TResult Function( _SignUpSubmitted value)?  signUpSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case _LoginSubmitted() when loginSubmitted != null:
return loginSubmitted(_that);case _SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UsernameChanged value)  usernameChanged,required TResult Function( _PasswordChanged value)  passwordChanged,required TResult Function( _LoginSubmitted value)  loginSubmitted,required TResult Function( _SignUpSubmitted value)  signUpSubmitted,}){
final _that = this;
switch (_that) {
case _UsernameChanged():
return usernameChanged(_that);case _PasswordChanged():
return passwordChanged(_that);case _LoginSubmitted():
return loginSubmitted(_that);case _SignUpSubmitted():
return signUpSubmitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UsernameChanged value)?  usernameChanged,TResult? Function( _PasswordChanged value)?  passwordChanged,TResult? Function( _LoginSubmitted value)?  loginSubmitted,TResult? Function( _SignUpSubmitted value)?  signUpSubmitted,}){
final _that = this;
switch (_that) {
case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case _LoginSubmitted() when loginSubmitted != null:
return loginSubmitted(_that);case _SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String username)?  usernameChanged,TResult Function( String password)?  passwordChanged,TResult Function()?  loginSubmitted,TResult Function()?  signUpSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.username);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case _LoginSubmitted() when loginSubmitted != null:
return loginSubmitted();case _SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String username)  usernameChanged,required TResult Function( String password)  passwordChanged,required TResult Function()  loginSubmitted,required TResult Function()  signUpSubmitted,}) {final _that = this;
switch (_that) {
case _UsernameChanged():
return usernameChanged(_that.username);case _PasswordChanged():
return passwordChanged(_that.password);case _LoginSubmitted():
return loginSubmitted();case _SignUpSubmitted():
return signUpSubmitted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String username)?  usernameChanged,TResult? Function( String password)?  passwordChanged,TResult? Function()?  loginSubmitted,TResult? Function()?  signUpSubmitted,}) {final _that = this;
switch (_that) {
case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.username);case _PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case _LoginSubmitted() when loginSubmitted != null:
return loginSubmitted();case _SignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted();case _:
  return null;

}
}

}

/// @nodoc


class _UsernameChanged implements LoginEvent {
  const _UsernameChanged(this.username);
  

 final  String username;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsernameChangedCopyWith<_UsernameChanged> get copyWith => __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsernameChanged&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,username);

@override
String toString() {
  return 'LoginEvent.usernameChanged(username: $username)';
}


}

/// @nodoc
abstract mixin class _$UsernameChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(_UsernameChanged value, $Res Function(_UsernameChanged) _then) = __$UsernameChangedCopyWithImpl;
@useResult
$Res call({
 String username
});




}
/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(this._self, this._then);

  final _UsernameChanged _self;
  final $Res Function(_UsernameChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,}) {
  return _then(_UsernameChanged(
null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PasswordChanged implements LoginEvent {
  const _PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordChangedCopyWith<_PasswordChanged> get copyWith => __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'LoginEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(_PasswordChanged value, $Res Function(_PasswordChanged) _then) = __$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoginSubmitted implements LoginEvent {
  const _LoginSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.loginSubmitted()';
}


}




/// @nodoc


class _SignUpSubmitted implements LoginEvent {
  const _SignUpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.signUpSubmitted()';
}


}




/// @nodoc
mixin _$LoginState {

 FormzSubmissionStatus get status; Username get username; Password get password; bool get isValid; LoginError? get error;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.status, status) || other.status == status)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,username,password,isValid,error);

@override
String toString() {
  return 'LoginState(status: $status, username: $username, password: $password, isValid: $isValid, error: $error)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 FormzSubmissionStatus status, Username username, Password password, bool isValid, LoginError? error
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? username = null,Object? password = null,Object? isValid = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as LoginError?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FormzSubmissionStatus status,  Username username,  Password password,  bool isValid,  LoginError? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.status,_that.username,_that.password,_that.isValid,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FormzSubmissionStatus status,  Username username,  Password password,  bool isValid,  LoginError? error)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.status,_that.username,_that.password,_that.isValid,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FormzSubmissionStatus status,  Username username,  Password password,  bool isValid,  LoginError? error)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.status,_that.username,_that.password,_that.isValid,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({this.status = FormzSubmissionStatus.initial, this.username = const Username.pure(), this.password = const Password.pure(), this.isValid = false, this.error = null});
  

@override@JsonKey() final  FormzSubmissionStatus status;
@override@JsonKey() final  Username username;
@override@JsonKey() final  Password password;
@override@JsonKey() final  bool isValid;
@override@JsonKey() final  LoginError? error;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.status, status) || other.status == status)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,username,password,isValid,error);

@override
String toString() {
  return 'LoginState(status: $status, username: $username, password: $password, isValid: $isValid, error: $error)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 FormzSubmissionStatus status, Username username, Password password, bool isValid, LoginError? error
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? username = null,Object? password = null,Object? isValid = null,Object? error = freezed,}) {
  return _then(_LoginState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as LoginError?,
  ));
}


}

// dart format on
