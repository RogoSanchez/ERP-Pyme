// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeeEditEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeEditEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEditEvent()';
}


}

/// @nodoc
class $EmployeeEditEventCopyWith<$Res>  {
$EmployeeEditEventCopyWith(EmployeeEditEvent _, $Res Function(EmployeeEditEvent) __);
}


/// Adds pattern-matching-related methods to [EmployeeEditEvent].
extension EmployeeEditEventPatterns on EmployeeEditEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _EditContact value)?  editContact,TResult Function( _SaveContact value)?  saveContact,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _EditContact() when editContact != null:
return editContact(_that);case _SaveContact() when saveContact != null:
return saveContact(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _EditContact value)  editContact,required TResult Function( _SaveContact value)  saveContact,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _EditContact():
return editContact(_that);case _SaveContact():
return saveContact(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _EditContact value)?  editContact,TResult? Function( _SaveContact value)?  saveContact,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _EditContact() when editContact != null:
return editContact(_that);case _SaveContact() when saveContact != null:
return saveContact(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String id)?  editContact,TResult Function( String name,  String? phone,  String? email)?  saveContact,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _EditContact() when editContact != null:
return editContact(_that.id);case _SaveContact() when saveContact != null:
return saveContact(_that.name,_that.phone,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String id)  editContact,required TResult Function( String name,  String? phone,  String? email)  saveContact,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _EditContact():
return editContact(_that.id);case _SaveContact():
return saveContact(_that.name,_that.phone,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String id)?  editContact,TResult? Function( String name,  String? phone,  String? email)?  saveContact,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _EditContact() when editContact != null:
return editContact(_that.id);case _SaveContact() when saveContact != null:
return saveContact(_that.name,_that.phone,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements EmployeeEditEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEditEvent.started()';
}


}




/// @nodoc


class _EditContact implements EmployeeEditEvent {
  const _EditContact(this.id);
  

 final  String id;

/// Create a copy of EmployeeEditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditContactCopyWith<_EditContact> get copyWith => __$EditContactCopyWithImpl<_EditContact>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditContact&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'EmployeeEditEvent.editContact(id: $id)';
}


}

/// @nodoc
abstract mixin class _$EditContactCopyWith<$Res> implements $EmployeeEditEventCopyWith<$Res> {
  factory _$EditContactCopyWith(_EditContact value, $Res Function(_EditContact) _then) = __$EditContactCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$EditContactCopyWithImpl<$Res>
    implements _$EditContactCopyWith<$Res> {
  __$EditContactCopyWithImpl(this._self, this._then);

  final _EditContact _self;
  final $Res Function(_EditContact) _then;

/// Create a copy of EmployeeEditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_EditContact(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SaveContact implements EmployeeEditEvent {
  const _SaveContact(this.name, this.phone, this.email);
  

 final  String name;
 final  String? phone;
 final  String? email;

/// Create a copy of EmployeeEditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveContactCopyWith<_SaveContact> get copyWith => __$SaveContactCopyWithImpl<_SaveContact>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveContact&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,name,phone,email);

@override
String toString() {
  return 'EmployeeEditEvent.saveContact(name: $name, phone: $phone, email: $email)';
}


}

/// @nodoc
abstract mixin class _$SaveContactCopyWith<$Res> implements $EmployeeEditEventCopyWith<$Res> {
  factory _$SaveContactCopyWith(_SaveContact value, $Res Function(_SaveContact) _then) = __$SaveContactCopyWithImpl;
@useResult
$Res call({
 String name, String? phone, String? email
});




}
/// @nodoc
class __$SaveContactCopyWithImpl<$Res>
    implements _$SaveContactCopyWith<$Res> {
  __$SaveContactCopyWithImpl(this._self, this._then);

  final _SaveContact _self;
  final $Res Function(_SaveContact) _then;

/// Create a copy of EmployeeEditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = freezed,Object? email = freezed,}) {
  return _then(_SaveContact(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$EmployeeEditState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeEditState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEditState()';
}


}

/// @nodoc
class $EmployeeEditStateCopyWith<$Res>  {
$EmployeeEditStateCopyWith(EmployeeEditState _, $Res Function(EmployeeEditState) __);
}


/// Adds pattern-matching-related methods to [EmployeeEditState].
extension EmployeeEditStatePatterns on EmployeeEditState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingInfo value)?  loading,TResult Function( SavingContact value)?  savingContact,TResult Function( EditingEmployee value)?  editingEmployee,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingInfo() when loading != null:
return loading(_that);case SavingContact() when savingContact != null:
return savingContact(_that);case EditingEmployee() when editingEmployee != null:
return editingEmployee(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingInfo value)  loading,required TResult Function( SavingContact value)  savingContact,required TResult Function( EditingEmployee value)  editingEmployee,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingInfo():
return loading(_that);case SavingContact():
return savingContact(_that);case EditingEmployee():
return editingEmployee(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingInfo value)?  loading,TResult? Function( SavingContact value)?  savingContact,TResult? Function( EditingEmployee value)?  editingEmployee,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingInfo() when loading != null:
return loading(_that);case SavingContact() when savingContact != null:
return savingContact(_that);case EditingEmployee() when editingEmployee != null:
return editingEmployee(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  savingContact,TResult Function( Employee employee)?  editingEmployee,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingInfo() when loading != null:
return loading();case SavingContact() when savingContact != null:
return savingContact();case EditingEmployee() when editingEmployee != null:
return editingEmployee(_that.employee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  savingContact,required TResult Function( Employee employee)  editingEmployee,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingInfo():
return loading();case SavingContact():
return savingContact();case EditingEmployee():
return editingEmployee(_that.employee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  savingContact,TResult? Function( Employee employee)?  editingEmployee,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingInfo() when loading != null:
return loading();case SavingContact() when savingContact != null:
return savingContact();case EditingEmployee() when editingEmployee != null:
return editingEmployee(_that.employee);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EmployeeEditState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEditState.initial()';
}


}




/// @nodoc


class LoadingInfo implements EmployeeEditState {
  const LoadingInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEditState.loading()';
}


}




/// @nodoc


class SavingContact implements EmployeeEditState {
  const SavingContact();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavingContact);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeeEditState.savingContact()';
}


}




/// @nodoc


class EditingEmployee implements EmployeeEditState {
  const EditingEmployee(this.employee);
  

 final  Employee employee;

/// Create a copy of EmployeeEditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditingEmployeeCopyWith<EditingEmployee> get copyWith => _$EditingEmployeeCopyWithImpl<EditingEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditingEmployee&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,employee);

@override
String toString() {
  return 'EmployeeEditState.editingEmployee(employee: $employee)';
}


}

/// @nodoc
abstract mixin class $EditingEmployeeCopyWith<$Res> implements $EmployeeEditStateCopyWith<$Res> {
  factory $EditingEmployeeCopyWith(EditingEmployee value, $Res Function(EditingEmployee) _then) = _$EditingEmployeeCopyWithImpl;
@useResult
$Res call({
 Employee employee
});


$EmployeeCopyWith<$Res> get employee;

}
/// @nodoc
class _$EditingEmployeeCopyWithImpl<$Res>
    implements $EditingEmployeeCopyWith<$Res> {
  _$EditingEmployeeCopyWithImpl(this._self, this._then);

  final EditingEmployee _self;
  final $Res Function(EditingEmployee) _then;

/// Create a copy of EmployeeEditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employee = null,}) {
  return _then(EditingEmployee(
null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}

/// Create a copy of EmployeeEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get employee {
  
  return $EmployeeCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on
