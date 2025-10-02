part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditState with _$EmployeeEditState {
  const factory EmployeeEditState.initial() = _Initial;
  const factory EmployeeEditState.loading() = LoadingInfo;

  const factory EmployeeEditState.savingContact() = SavingContact;
  const factory EmployeeEditState.editingEmployee(Employee employee) =
      EditingEmployee;
}

/*  */
