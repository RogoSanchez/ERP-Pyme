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
        emit(Loading());
        employees = await getEmployees();
        employees.sort(
          (a, b) => (a.name.toLowerCase().compareTo(b.name.toLowerCase())),
        );
        await SelectedListToFalse();

        emit(Loaded(employees));
      } catch (e) {
        rethrow;
      }
    });
    on<_Search>((event, emit) async {
      employees = await employeeRepository.FetchEmployeesByName(event.name);
      employees.sort(
        (a, b) => (a.name.codeUnitAt(0).compareTo(b.name.codeUnitAt(0))),
      );
      emit(Loading());
      emit(Searching(employees));
    });
    on<_Mark>((event, emit) async {
      bool noMarked = true;
      selectedCard[event.idCard] = !selectedCard[event.idCard];
      emit(EmployeesState.initial());
      for (var element in selectedCard) {
        if (element) {
          noMarked = false;
        }
      }
      if (noMarked) {
        emit(Loaded(employees));
      } else {
        emit(Deleting(employees));
      }
    });
    on<_DeleteMarked>((event, emit) async {
      await DeleteEmployee();
      try {
        employees = await getEmployees();
        employees.sort(
          (a, b) => (a.name.codeUnitAt(0).compareTo(b.name.codeUnitAt(0))),
        );
        SelectedListToFalse();
        emit(Loaded(employees));
      } catch (e) {}
    });
  }

  EmployeeRepositoryI employeeRepository = EmployeeRepositoryI();
  List<Employee> employees = [];
  List<bool> selectedCard = [];

  Future<List<Employee>> getEmployees() async {
    debugPrint("Fetching Employees");
    return await employeeRepository.FetchAllEmployee();
  }

  Future<void> DeleteEmployee() async {
    for (var i = 0; i < selectedCard.length; i++) {
      if (selectedCard[i]) {
        await employeeRepository.Delete(employees[i].id!);
      }
    }
  }

  Future<void> SelectedListToFalse() async {
    selectedCard = List.filled(employees.length, false);
  }
}
