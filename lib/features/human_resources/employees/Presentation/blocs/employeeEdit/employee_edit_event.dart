part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditEvent with _$EmployeeEditEvent {
  const factory EmployeeEditEvent.started() = _Started;
  const factory EmployeeEditEvent.editContact(String id) = _EditContact;
  const factory EmployeeEditEvent.saveContact(
    String name,
    String? phone,
    String? email,
  ) = _SaveContact;
}
