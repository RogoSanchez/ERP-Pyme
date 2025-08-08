import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trabajadores/features/human_resources/employees/data/datasources/implements/employee_repository_implements.dart';
import 'package:trabajadores/features/human_resources/employees/domain/entities/employee.dart';

part 'employees_event.dart';
part 'employees_state.dart';
part 'employees_bloc.freezed.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc() : super(EmployeesState.initial()) {
    EmployeeRepositoryI supabaseRepository = EmployeeRepositoryI();

    on<_GetAll>((event, emit) async {
      try {
        final List<Employee> employees =
            await supabaseRepository.FetchAllEmployee();
        emit(Loaded(employees));
      } catch (e) {
        rethrow;
      }
    });
    on<_SearchEmployee>((event, emit) {
      emit(_Searching());
    });
  }
}
