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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetAll value)?  getAllEvent,TResult Function( _AddingEmployee value)?  addingEvent,TResult Function( _Search value)?  searchEvent,TResult Function( _Mark value)?  markEmployee,TResult Function( _DeleteMarked value)?  deleteMarkedEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAll() when getAllEvent != null:
return getAllEvent(_that);case _AddingEmployee() when addingEvent != null:
return addingEvent(_that);case _Search() when searchEvent != null:
return searchEvent(_that);case _Mark() when markEmployee != null:
return markEmployee(_that);case _DeleteMarked() when deleteMarkedEvent != null:
return deleteMarkedEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetAll value)  getAllEvent,required TResult Function( _AddingEmployee value)  addingEvent,required TResult Function( _Search value)  searchEvent,required TResult Function( _Mark value)  markEmployee,required TResult Function( _DeleteMarked value)  deleteMarkedEvent,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetAll():
return getAllEvent(_that);case _AddingEmployee():
return addingEvent(_that);case _Search():
return searchEvent(_that);case _Mark():
return markEmployee(_that);case _DeleteMarked():
return deleteMarkedEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetAll value)?  getAllEvent,TResult? Function( _AddingEmployee value)?  addingEvent,TResult? Function( _Search value)?  searchEvent,TResult? Function( _Mark value)?  markEmployee,TResult? Function( _DeleteMarked value)?  deleteMarkedEvent,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAll() when getAllEvent != null:
return getAllEvent(_that);case _AddingEmployee() when addingEvent != null:
return addingEvent(_that);case _Search() when searchEvent != null:
return searchEvent(_that);case _Mark() when markEmployee != null:
return markEmployee(_that);case _DeleteMarked() when deleteMarkedEvent != null:
return deleteMarkedEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getAllEvent,TResult Function( Employee employee)?  addingEvent,TResult Function( String name)?  searchEvent,TResult Function( int idEmployee,  int idCard)?  markEmployee,TResult Function()?  deleteMarkedEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAll() when getAllEvent != null:
return getAllEvent();case _AddingEmployee() when addingEvent != null:
return addingEvent(_that.employee);case _Search() when searchEvent != null:
return searchEvent(_that.name);case _Mark() when markEmployee != null:
return markEmployee(_that.idEmployee,_that.idCard);case _DeleteMarked() when deleteMarkedEvent != null:
return deleteMarkedEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getAllEvent,required TResult Function( Employee employee)  addingEvent,required TResult Function( String name)  searchEvent,required TResult Function( int idEmployee,  int idCard)  markEmployee,required TResult Function()  deleteMarkedEvent,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetAll():
return getAllEvent();case _AddingEmployee():
return addingEvent(_that.employee);case _Search():
return searchEvent(_that.name);case _Mark():
return markEmployee(_that.idEmployee,_that.idCard);case _DeleteMarked():
return deleteMarkedEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getAllEvent,TResult? Function( Employee employee)?  addingEvent,TResult? Function( String name)?  searchEvent,TResult? Function( int idEmployee,  int idCard)?  markEmployee,TResult? Function()?  deleteMarkedEvent,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAll() when getAllEvent != null:
return getAllEvent();case _AddingEmployee() when addingEvent != null:
return addingEvent(_that.employee);case _Search() when searchEvent != null:
return searchEvent(_that.name);case _Mark() when markEmployee != null:
return markEmployee(_that.idEmployee,_that.idCard);case _DeleteMarked() when deleteMarkedEvent != null:
return deleteMarkedEvent();case _:
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


class _Search implements EmployeesEvent {
  const _Search(this.name);
  

 final  String name;

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'EmployeesEvent.searchEvent(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $EmployeesEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_Search(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Mark implements EmployeesEvent {
  const _Mark(this.idEmployee, this.idCard);
  

 final  int idEmployee;
 final  int idCard;

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkCopyWith<_Mark> get copyWith => __$MarkCopyWithImpl<_Mark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mark&&(identical(other.idEmployee, idEmployee) || other.idEmployee == idEmployee)&&(identical(other.idCard, idCard) || other.idCard == idCard));
}


@override
int get hashCode => Object.hash(runtimeType,idEmployee,idCard);

@override
String toString() {
  return 'EmployeesEvent.markEmployee(idEmployee: $idEmployee, idCard: $idCard)';
}


}

/// @nodoc
abstract mixin class _$MarkCopyWith<$Res> implements $EmployeesEventCopyWith<$Res> {
  factory _$MarkCopyWith(_Mark value, $Res Function(_Mark) _then) = __$MarkCopyWithImpl;
@useResult
$Res call({
 int idEmployee, int idCard
});




}
/// @nodoc
class __$MarkCopyWithImpl<$Res>
    implements _$MarkCopyWith<$Res> {
  __$MarkCopyWithImpl(this._self, this._then);

  final _Mark _self;
  final $Res Function(_Mark) _then;

/// Create a copy of EmployeesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idEmployee = null,Object? idCard = null,}) {
  return _then(_Mark(
null == idEmployee ? _self.idEmployee : idEmployee // ignore: cast_nullable_to_non_nullable
as int,null == idCard ? _self.idCard : idCard // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DeleteMarked implements EmployeesEvent {
  const _DeleteMarked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMarked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesEvent.deleteMarkedEvent()';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loaded value)?  loadedState,TResult Function( _Error value)?  errorState,TResult Function( _Adding value)?  addingState,TResult Function( Searching value)?  searchingState,TResult Function( Loading value)?  loadingState,TResult Function( Deleting value)?  deleting,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loaded() when loadedState != null:
return loadedState(_that);case _Error() when errorState != null:
return errorState(_that);case _Adding() when addingState != null:
return addingState(_that);case Searching() when searchingState != null:
return searchingState(_that);case Loading() when loadingState != null:
return loadingState(_that);case Deleting() when deleting != null:
return deleting(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loaded value)  loadedState,required TResult Function( _Error value)  errorState,required TResult Function( _Adding value)  addingState,required TResult Function( Searching value)  searchingState,required TResult Function( Loading value)  loadingState,required TResult Function( Deleting value)  deleting,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loaded():
return loadedState(_that);case _Error():
return errorState(_that);case _Adding():
return addingState(_that);case Searching():
return searchingState(_that);case Loading():
return loadingState(_that);case Deleting():
return deleting(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loaded value)?  loadedState,TResult? Function( _Error value)?  errorState,TResult? Function( _Adding value)?  addingState,TResult? Function( Searching value)?  searchingState,TResult? Function( Loading value)?  loadingState,TResult? Function( Deleting value)?  deleting,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loaded() when loadedState != null:
return loadedState(_that);case _Error() when errorState != null:
return errorState(_that);case _Adding() when addingState != null:
return addingState(_that);case Searching() when searchingState != null:
return searchingState(_that);case Loading() when loadingState != null:
return loadingState(_that);case Deleting() when deleting != null:
return deleting(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Employee> employees)?  loadedState,TResult Function( String Error)?  errorState,TResult Function( Employee employee)?  addingState,TResult Function( List<Employee> employees)?  searchingState,TResult Function()?  loadingState,TResult Function( List<Employee> employees)?  deleting,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loaded() when loadedState != null:
return loadedState(_that.employees);case _Error() when errorState != null:
return errorState(_that.Error);case _Adding() when addingState != null:
return addingState(_that.employee);case Searching() when searchingState != null:
return searchingState(_that.employees);case Loading() when loadingState != null:
return loadingState();case Deleting() when deleting != null:
return deleting(_that.employees);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Employee> employees)  loadedState,required TResult Function( String Error)  errorState,required TResult Function( Employee employee)  addingState,required TResult Function( List<Employee> employees)  searchingState,required TResult Function()  loadingState,required TResult Function( List<Employee> employees)  deleting,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loaded():
return loadedState(_that.employees);case _Error():
return errorState(_that.Error);case _Adding():
return addingState(_that.employee);case Searching():
return searchingState(_that.employees);case Loading():
return loadingState();case Deleting():
return deleting(_that.employees);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Employee> employees)?  loadedState,TResult? Function( String Error)?  errorState,TResult? Function( Employee employee)?  addingState,TResult? Function( List<Employee> employees)?  searchingState,TResult? Function()?  loadingState,TResult? Function( List<Employee> employees)?  deleting,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loaded() when loadedState != null:
return loadedState(_that.employees);case _Error() when errorState != null:
return errorState(_that.Error);case _Adding() when addingState != null:
return addingState(_that.employee);case Searching() when searchingState != null:
return searchingState(_that.employees);case Loading() when loadingState != null:
return loadingState();case Deleting() when deleting != null:
return deleting(_that.employees);case _:
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
  return 'EmployeesState.loadedState(employees: $employees)';
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
  return 'EmployeesState.errorState(Error: $Error)';
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
  return 'EmployeesState.addingState(employee: $employee)';
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


class Searching implements EmployeesState {
  const Searching(final  List<Employee> employees): _employees = employees;
  

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
$SearchingCopyWith<Searching> get copyWith => _$SearchingCopyWithImpl<Searching>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Searching&&const DeepCollectionEquality().equals(other._employees, _employees));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees));

@override
String toString() {
  return 'EmployeesState.searchingState(employees: $employees)';
}


}

/// @nodoc
abstract mixin class $SearchingCopyWith<$Res> implements $EmployeesStateCopyWith<$Res> {
  factory $SearchingCopyWith(Searching value, $Res Function(Searching) _then) = _$SearchingCopyWithImpl;
@useResult
$Res call({
 List<Employee> employees
});




}
/// @nodoc
class _$SearchingCopyWithImpl<$Res>
    implements $SearchingCopyWith<$Res> {
  _$SearchingCopyWithImpl(this._self, this._then);

  final Searching _self;
  final $Res Function(Searching) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employees = null,}) {
  return _then(Searching(
null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<Employee>,
  ));
}


}

/// @nodoc


class Loading implements EmployeesState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmployeesState.loadingState()';
}


}




/// @nodoc


class Deleting implements EmployeesState {
  const Deleting(final  List<Employee> employees): _employees = employees;
  

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
$DeletingCopyWith<Deleting> get copyWith => _$DeletingCopyWithImpl<Deleting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deleting&&const DeepCollectionEquality().equals(other._employees, _employees));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees));

@override
String toString() {
  return 'EmployeesState.deleting(employees: $employees)';
}


}

/// @nodoc
abstract mixin class $DeletingCopyWith<$Res> implements $EmployeesStateCopyWith<$Res> {
  factory $DeletingCopyWith(Deleting value, $Res Function(Deleting) _then) = _$DeletingCopyWithImpl;
@useResult
$Res call({
 List<Employee> employees
});




}
/// @nodoc
class _$DeletingCopyWithImpl<$Res>
    implements $DeletingCopyWith<$Res> {
  _$DeletingCopyWithImpl(this._self, this._then);

  final Deleting _self;
  final $Res Function(Deleting) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? employees = null,}) {
  return _then(Deleting(
null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<Employee>,
  ));
}


}

// dart format on
