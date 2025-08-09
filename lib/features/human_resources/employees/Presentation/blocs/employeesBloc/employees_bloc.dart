import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pyme_erp/features/human_resources/employees/data/datasources/implements/employee_repository_implements.dart';
import 'package:pyme_erp/features/human_resources/employees/domain/entities/employee.dart';

part 'employees_event.dart';
part 'employees_state.dart';
part 'employees_bloc.freezed.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc() : super(EmployeesState.initial()) {
    on<_GetAll>((event, emit) async {
      try {
        employees = await getEmployees();
        employees.sort(
          (a, b) => (a.name.codeUnitAt(0).compareTo(b.name.codeUnitAt(0))),
        );
        emit(Loaded(employees));
      } catch (e) {
        rethrow;
      }
    });
    on<_SearchEmployee>((event, emit) async {
      employees = await supabaseRepository.FetchEmployeesByName(event.name);
      employees.sort(
          (a, b) => (a.name.codeUnitAt(0).compareTo(b.name.codeUnitAt(0))),
        );
      emit(Loading());
      emit(Searching(employees));
    });
  }

  EmployeeRepositoryI supabaseRepository = EmployeeRepositoryI();
  List<Employee> employees = [];

  Future<List<Employee>> getEmployees() async {
    debugPrint("Fetching Employees");
    return await supabaseRepository.FetchAllEmployee();
  }
}
