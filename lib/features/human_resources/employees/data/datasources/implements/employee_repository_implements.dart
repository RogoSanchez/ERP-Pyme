import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pyme_erp/features/human_resources/employees/data/datasources/employee_repository.dart';
import 'package:pyme_erp/features/human_resources/employees/domain/entities/employee.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EmployeeRepositoryI implements EmployeeRepository {
  final supabase = GetIt.instance<SupabaseClient>();

  @override
  Future<void> InsertEmployee(Employee employee) async {
    await supabase.from('Employees').insert({
      'name': employee.name,
      'phone': employee.phone,
      'email': employee.email,
      'user_id': supabase.auth.currentUser!.id,
    });
  }

  @override
  Future<List<Employee>> FetchAllEmployee() async {
    final List<dynamic> response = await supabase.from('Employees').select('*');
    return (response)
        .map((e) => Employee.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Employee> GetBy(int id) async {
    final response = await supabase
        .from('Employees')
        .select()
        .eq('id', id)
        .single();
    return Employee.fromJson(response);
  }

  @override
  Future<void> UpdateInfo(
    String id,
    String name,
    String phone,
    String email,
  ) async {
    try {
      int id0 = int.parse(id);
      await supabase
          .from('Employees')
          .update({'name': name, 'phone': phone, 'email': email})
          .eq('id', id0);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<List<Employee>> FetchEmployeesByName(String name) async {
    final response = await supabase
        .from('Employees')
        .select()
        .ilike('name', '%$name%');
    return response.map((e) => Employee.fromJson(e)).toList();
  }

  @override
  Future<void> Delete(int id) async {
    await supabase.from('Employees').delete().eq('id', id);
  }
}
