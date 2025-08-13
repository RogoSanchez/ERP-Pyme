part of 'employees_bloc.dart';

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState.initial() = _Initial;
  const factory EmployeesState.loadedState(List<Employee> employees) = Loaded;
  const factory EmployeesState.errorState(String Error) = _Error;
  const factory EmployeesState.addingState(Employee employee) = _Adding;
  const factory EmployeesState.searchingState(List<Employee> employees) = Searching;
  const factory EmployeesState.loadingState() = Loading;
  const factory EmployeesState.deleting(List<Employee> employees) = Deleting;

}
