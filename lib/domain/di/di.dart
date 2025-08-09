import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:pyme_erp/features/human_resources/employees/data/datasources/implements/employee_repository_implements.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

GetIt getIt = GetIt.instance;

void ServiceLocatorSetup() {
  final API_URL = dotenv.env['URL'];
  final API_KEY = dotenv.env['ANONKEY'];

  final SupabaseClient supabase = SupabaseClient(API_URL!, API_KEY!);
  getIt.registerSingleton<SupabaseClient>(supabase);
  getIt.registerLazySingleton<EmployeeRepositoryI>(() => EmployeeRepositoryI());
}

final supabase = GetIt.instance<SupabaseClient>();
final employeeRepository = GetIt.instance<EmployeeRepositoryI>();
