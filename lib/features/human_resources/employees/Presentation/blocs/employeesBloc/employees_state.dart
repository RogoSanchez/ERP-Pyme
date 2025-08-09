part of 'employees_bloc.dart';

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState.initial() = _Initial;
  const factory EmployeesState.loaded(List<Employee> employees) = Loaded;
  const factory EmployeesState.error(String Error) = _Error;
  const factory EmployeesState.adding(Employee employee) = _Adding;
  const factory EmployeesState.searching(List<Employee> employees) = Searching;
  const factory EmployeesState.loading() = Loading;
}
