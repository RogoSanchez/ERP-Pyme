// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesEvent()';
}


}

/// @nodoc
class $EmployeesEventCopyWith<$Res>  {
$EmployeesEventCopyWith(EmployeesEvent _, $Res Function(EmployeesEvent) __);
}


/// Adds pattern-matching-related methods to [EmployeesEvent].
extension EmployeesEventPatterns on EmployeesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetAll value)?  getAllEvent,TResult Function( _AddingEmployee value)?  addingEvent,TResult Function( _SearchEmployee value)?  searchEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAll() when getAllEvent != null:
return getAllEvent(_that);case _AddingEmployee() when addingEvent != null:
return addingEvent(_that);case _SearchEmployee() when searchEvent != null:
return searchEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetAll value)  getAllEvent,required TResult Function( _AddingEmployee value)  addingEvent,required TResult Function( _SearchEmployee value)  searchEvent,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetAll():
return getAllEvent(_that);case _AddingEmployee():
return addingEvent(_that);case _SearchEmployee():
return searchEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetAll value)?  getAllEvent,TResult? Function( _AddingEmployee value)?  addingEvent,TResult? Function( _SearchEmployee value)?  searchEvent,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAll() when getAllEvent != null:
return getAllEvent(_that);case _AddingEmployee() when addingEvent != null:
return addingEvent(_that);case _SearchEmployee() when searchEvent != null:
return searchEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getAllEvent,TResult Function( Employee employee)?  addingEvent,TResult Function()?  searchEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAll() when getAllEvent != null:
return getAllEvent();case _AddingEmployee() when addingEvent != null:
return addingEvent(_that.employee);case _SearchEmployee() when searchEvent != null:
return searchEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getAllEvent,required TResult Function( Employee employee)  addingEvent,required TResult Function()  searchEvent,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetAll():
return getAllEvent();case _AddingEmployee():
return addingEvent(_that.employee);case _SearchEmployee():
return searchEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getAllEvent,TResult? Function( Employee employee)?  addingEvent,TResult? Function()?  searchEvent,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAll() when getAllEvent != null:
return getAllEvent();case _AddingEmployee() when addingEvent != null:
return addingEvent(_that.employee);case _SearchEmployee() when searchEvent != null:
return searchEvent();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements EmployeesEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesEvent.started()';
}


}




/// @nodoc


class _GetAll implements EmployeesEvent {
  const _GetAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesEvent.getAllEvent()';
}


}




/// @nodoc


class _AddingEmployee implements EmployeesEvent {
  const _AddingEmployee(this.employee);
  

 final  Employee employee;

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddingEmployeeCopyWith<_AddingEmployee> get copyWith => __$AddingEmployeeCopyWithImpl<_AddingEmployee>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddingEmployee&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,employee);

@override
String toString() {
  return 'EmployeesEvent.addingEvent(employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$AddingEmployeeCopyWith<$Res> implements $EmployeesEventCopyWith<$Res> {
  factory _$AddingEmployeeCopyWith(_AddingEmployee value, $Res Function(_AddingEmployee) _then) = __$AddingEmployeeCopyWithImpl;
@useResult
$Res call({
 Employee employee
});


$EmployeeCopyWith<$Res> get employee;

}
/// @nodoc
class __$AddingEmployeeCopyWithImpl<$Res>
    implements _$AddingEmployeeCopyWith<$Res> {
  __$AddingEmployeeCopyWithImpl(this._self, this._then);

  final _AddingEmployee _self;
  final $Res Function(_AddingEmployee) _then;

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employee = null,}) {
  return _then(_AddingEmployee(
null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get employee {
  
  return $EmployeeCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

/// @nodoc


class _SearchEmployee implements EmployeesEvent {
  const _SearchEmployee();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchEmployee);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesEvent.searchEvent()';
}


}




/// @nodoc
mixin _$EmployeesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesState()';
}


}

/// @nodoc
class $EmployeesStateCopyWith<$Res>  {
$EmployeesStateCopyWith(EmployeesState _, $Res Function(EmployeesState) __);
}


/// Adds pattern-matching-related methods to [EmployeesState].
extension EmployeesStatePatterns on EmployeesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loaded value)?  loaded,TResult Function( _Error value)?  error,TResult Function( _Adding value)?  adding,TResult Function( _Searching value)?  searching,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Adding() when adding != null:
return adding(_that);case _Searching() when searching != null:
return searching(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loaded value)  loaded,required TResult Function( _Error value)  error,required TResult Function( _Adding value)  adding,required TResult Function( _Searching value)  searching,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loaded():
return loaded(_that);case _Error():
return error(_that);case _Adding():
return adding(_that);case _Searching():
return searching(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loaded value)?  loaded,TResult? Function( _Error value)?  error,TResult? Function( _Adding value)?  adding,TResult? Function( _Searching value)?  searching,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Adding() when adding != null:
return adding(_that);case _Searching() when searching != null:
return searching(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Employee> employees)?  loaded,TResult Function( String Error)?  error,TResult Function( Employee employee)?  adding,TResult Function()?  searching,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loaded() when loaded != null:
return loaded(_that.employees);case _Error() when error != null:
return error(_that.Error);case _Adding() when adding != null:
return adding(_that.employee);case _Searching() when searching != null:
return searching();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Employee> employees)  loaded,required TResult Function( String Error)  error,required TResult Function( Employee employee)  adding,required TResult Function()  searching,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loaded():
return loaded(_that.employees);case _Error():
return error(_that.Error);case _Adding():
return adding(_that.employee);case _Searching():
return searching();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Employee> employees)?  loaded,TResult? Function( String Error)?  error,TResult? Function( Employee employee)?  adding,TResult? Function()?  searching,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loaded() when loaded != null:
return loaded(_that.employees);case _Error() when error != null:
return error(_that.Error);case _Adding() when adding != null:
return adding(_that.employee);case _Searching() when searching != null:
return searching();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EmployeesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesState.initial()';
}


}




/// @nodoc


class Loaded implements EmployeesState {
  const Loaded(final  List<Employee> employees): _employees = employees;
  

 final  List<Employee> _employees;
 List<Employee> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}


/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._employees, _employees));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees));

@override
String toString() {
  return 'EmployeesState.loaded(employees: $employees)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $EmployeesStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Employee> employees
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employees = null,}) {
  return _then(Loaded(
null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<Employee>,
  ));
}


}

/// @nodoc


class _Error implements EmployeesState {
  const _Error(this.Error);
  

 final  String Error;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.Error, Error) || other.Error == Error));
}


@override
int get hashCode => Object.hash(runtimeType,Error);

@override
String toString() {
  return 'EmployeesState.error(Error: $Error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $EmployeesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String Error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? Error = null,}) {
  return _then(_Error(
null == Error ? _self.Error : Error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Adding implements EmployeesState {
  const _Adding(this.employee);
  

 final  Employee employee;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddingCopyWith<_Adding> get copyWith => __$AddingCopyWithImpl<_Adding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Adding&&(identical(other.employee, employee) || other.employee == employee));
}


@override
int get hashCode => Object.hash(runtimeType,employee);

@override
String toString() {
  return 'EmployeesState.adding(employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$AddingCopyWith<$Res> implements $EmployeesStateCopyWith<$Res> {
  factory _$AddingCopyWith(_Adding value, $Res Function(_Adding) _then) = __$AddingCopyWithImpl;
@useResult
$Res call({
 Employee employee
});


$EmployeeCopyWith<$Res> get employee;

}
/// @nodoc
class __$AddingCopyWithImpl<$Res>
    implements _$AddingCopyWith<$Res> {
  __$AddingCopyWithImpl(this._self, this._then);

  final _Adding _self;
  final $Res Function(_Adding) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employee = null,}) {
  return _then(_Adding(
null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee,
  ));
}

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res> get employee {
  
  return $EmployeeCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

/// @nodoc


class _Searching implements EmployeesState {
  const _Searching();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Searching);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesState.searching()';
}


}




// dart format on
