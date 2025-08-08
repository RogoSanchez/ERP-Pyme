import 'package:trabajadores/features/human_resources/employees/domain/entities/employee.dart';

abstract class EmployeeRepository {
  Future<void> InsertEmployee(Employee employee);
  Future<List<dynamic>> FetchAllEmployee();
  Future<dynamic> GetBy(int id);
  Future<void> UpdateInfo(String id,String name,String phone , String email);
}
