part of 'employees_bloc.dart';

@freezed
class EmployeesEvent with _$EmployeesEvent {
  const factory EmployeesEvent.started() = _Started;
  const factory EmployeesEvent.getAllEvent() = _GetAll;
  const factory EmployeesEvent.addingEvent(Employee employee) = _AddingEmployee;
  const factory EmployeesEvent.searchEvent(String name) = _Search;
  const factory EmployeesEvent.markEmployee(int idEmployee, int idCard) = _Mark;
  const factory EmployeesEvent.deleteMarkedEvent() = _DeleteMarked;
}
