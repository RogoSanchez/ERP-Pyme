// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:pyme_erp/domain/di/di.dart';
// import 'package:pyme_erp/features/human_resources/employees/data/datasources/implements/employee_repository_implements.dart';
// import 'package:pyme_erp/features/human_resources/employees/domain/entities/employee.dart';
// import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';
// import 'package:pyme_erp/features/login/data/repositories/autentication_repository.dart';
// import 'package:pyme_erp/features/login/data/repositories/user_repository.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// // Mocks para testing
// class MockEmployeeRepository extends Mock implements EmployeeRepositoryI {}

// class MockAuthRepository extends Mock implements AuthenticationRepository {}

// class MockUserRepository extends Mock implements UserRepository {}

// class MockSupabaseClient extends Mock implements SupabaseClient {}

// void main() {
//   group('Dependency Injection Tests', () {
//     late MockEmployeeRepository mockEmployeeRepository;
//     late MockAuthRepository mockAuthRepository;
//     late MockUserRepository mockUserRepository;
//     late MockSupabaseClient mockSupabaseClient;

//     setUp(() {
//       // Crear mocks
//       mockEmployeeRepository = MockEmployeeRepository();
//       mockAuthRepository = MockAuthRepository();
//       mockUserRepository = MockUserRepository();
//       mockSupabaseClient = MockSupabaseClient();

//       // Configurar el Service Locator para testing
//       _setupDIForTesting(
//         employeeRepository: mockEmployeeRepository,
//         authRepository: mockAuthRepository,
//         userRepository: mockUserRepository,
//         supabaseClient: mockSupabaseClient,
//       );
//     });

//     tearDown(() async {
//       // Limpiar el Service Locator después de cada test
//       await ServiceLocator.reset();
//     });

//     test('DI registra y obtiene dependencias correctamente', () {
//       // Verificar que las dependencias están registradas
//       expect(DI.isRegistered<EmployeeRepositoryI>(), true);
//       expect(DI.isRegistered<AuthenticationRepository>(), true);
//       expect(DI.isRegistered<UserRepository>(), true);
//       expect(DI.isRegistered<SupabaseClient>(), true);

//       // Verificar que podemos obtener las dependencias
//       final employeeRepo = DI.get<EmployeeRepositoryI>();
//       final authRepo = DI.get<AuthenticationRepository>();
//       final userRepo = DI.get<UserRepository>();
//       final supabase = DI.get<SupabaseClient>();

//       expect(employeeRepo, isA<EmployeeRepositoryI>());
//       expect(authRepo, isA<AuthenticationRepository>());
//       expect(userRepo, isA<UserRepository>());
//       expect(supabase, isA<SupabaseClient>());
//     });

//     test('EmployeesBloc usa el repository inyectado', () async {
//       // Configurar el mock
//       final testEmployees = [
//         Employee(
//           id: 1,
//           name: 'John Doe',
//           phone: '1234567890',
//           email: 'john@test.com',
//         ),
//         Employee(
//           id: 2,
//           name: 'Jane Smith',
//           phone: '0987654321',
//           email: 'jane@test.com',
//         ),
//       ];

//       when(
//         () => mockEmployeeRepository.FetchAllEmployee(),
//       ).thenAnswer((_) async => testEmployees);

//       // Crear el bloc con DI
//       final bloc = EmployeesBloc(
//         employeeRepository: DI.get<EmployeeRepositoryI>(),
//       );

//       // Obtener empleados usando el repository inyectado
//       final employees = await bloc.getEmployees();

//       // Verificar que se usó el mock y devolvió los datos esperados
//       verify(() => mockEmployeeRepository.FetchAllEmployee()).called(1);
//       expect(employees.length, 2);
//       expect(employees[0].name, 'John Doe');
//       expect(employees[1].name, 'Jane Smith');

//       bloc.close();
//     });

//     test('DI permite intercambiar implementaciones fácilmente', () {
//       // Registrar una implementación diferente
//       ServiceLocator.instance.unregister<EmployeeRepositoryI>();
//       final alternativeRepo = MockEmployeeRepository();
//       ServiceLocator.instance.registerSingleton<EmployeeRepositoryI>(
//         alternativeRepo,
//       );

//       // Verificar que ahora obtenemos la nueva implementación
//       final repo = DI.get<EmployeeRepositoryI>();
//       expect(repo, equals(alternativeRepo));
//       expect(repo, isNot(equals(mockEmployeeRepository)));
//     });

//     test('DI maneja singleton correctamente', () {
//       // Obtener la misma dependencia múltiples veces
//       final repo1 = DI.get<EmployeeRepositoryI>();
//       final repo2 = DI.get<EmployeeRepositoryI>();
//       final repo3 = DI.get<EmployeeRepositoryI>();

//       // Verificar que todas son la misma instancia (Singleton)
//       expect(repo1, equals(repo2));
//       expect(repo2, equals(repo3));
//       expect(repo1, equals(repo3));
//     });
//   });
// }

// /// Configura el DI para testing con mocks
// void _setupDIForTesting({
//   required EmployeeRepositoryI employeeRepository,
//   required AuthenticationRepository authRepository,
//   required UserRepository userRepository,
//   required SupabaseClient supabaseClient,
// }) {
//   // Registrar los mocks en el Service Locator para testing
//   ServiceLocator.instance.registerSingleton<SupabaseClient>(supabaseClient);
//   ServiceLocator.instance.registerSingleton<AuthenticationRepository>(
//     authRepository,
//   );
//   ServiceLocator.instance.registerSingleton<UserRepository>(userRepository);
//   ServiceLocator.instance.registerSingleton<EmployeeRepositoryI>(
//     employeeRepository,
//   );
// }
