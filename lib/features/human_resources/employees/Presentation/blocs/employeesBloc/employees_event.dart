part of 'employees_bloc.dart';

@freezed
class EmployeesEvent with _$EmployeesEvent {
  const factory EmployeesEvent.started() = _Started;
  const factory EmployeesEvent.getAllEvent() = _GetAll;
  const factory EmployeesEvent.addingEvent(Employee employee) = _AddingEmployee;
  const factory EmployeesEvent.searchEvent(String name) = _SearchEmployee;
}
