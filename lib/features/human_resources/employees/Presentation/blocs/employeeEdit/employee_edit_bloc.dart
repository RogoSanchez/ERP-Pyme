import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pyme_erp/features/human_resources/employees/data/datasources/implements/employee_repository_implements.dart';
import 'package:pyme_erp/features/human_resources/employees/domain/entities/employee.dart';

part 'employee_edit_event.dart';
part 'employee_edit_state.dart';
part 'employee_edit_bloc.freezed.dart';

class EmployeeEditBloc extends Bloc<EmployeeEditEvent, EmployeeEditState> {
  EmployeeRepositoryI supabaseRepository;
  EmployeeEditBloc(this.supabaseRepository) : super(_Initial()) {
    on<_Started>((event, emit) {
      emit(EmployeeEditState.initial());
    });

    on<_SaveContact>((event, emit) async {
      Employee newEmployee = Employee(
        name: event.name,
        phone: event.phone,
        email: event.email,
      );
      try {
        await supabaseRepository.InsertEmployee(newEmployee);
      } catch (e) {
        rethrow;
      }
    });
    on<_EditContact>((event, emit) async {
      try {
        emit(LoadingInfo());
        final Employee employee = await tryGetEmployee(int.parse(event.id));
        emit(EditingEmployee(employee));
      } catch (e) {
        debugPrint(e.toString());
      }
    });
  }

  Future<Employee> tryGetEmployee(int id) async {
    final Employee employee = await supabaseRepository.GetBy(id);
    return employee;
  }

  Future<void> UpdateEmployee(
    String id,
    String name,
    String phone,
    String email,
  ) async {
    await supabaseRepository.UpdateInfo(id, name, phone, email);
  }
}
