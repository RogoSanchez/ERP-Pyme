import 'package:pyme_erp/features/human_resources/employees/domain/entities/employee.dart';

abstract class EmployeeRepository {
  Future<void> InsertEmployee(Employee employee);
  Future<List<dynamic>> FetchAllEmployee();
  Future<dynamic> GetBy(int id);
  Future<List<Employee>> FetchEmployeesByName(String name);
  Future<void> UpdateInfo(String id, String name, String phone, String email);
}
