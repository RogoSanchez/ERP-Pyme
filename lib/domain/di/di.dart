import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:login/data/repositories/autentication_repository.dart';
import 'package:login/data/repositories/user_repository.dart';
import 'package:pyme_erp/features/human_resources/employees/data/datasources/implements/employee_repository_implements.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

/// Service Locator usando GetIt para Dependency Injection
class ServiceLocator {
  static final GetIt _getIt = GetIt.instance;

  /// Getter para acceder a GetIt instance
  static GetIt get instance => _getIt;

  /// Inicializa todas las dependencias de la aplicación
  static Future<void> init() async {
    await _registerExternalDependencies();
    _registerRepositories();
    _registerBlocs();
  }

  static GoRouter initRouter(GoRouter router) {
    return _registerRouter(router);
  }

  /// Registra dependencias externas (APIs, bases de datos, etc.)
  static Future<void> _registerExternalDependencies() async {
    // Supabase ya está inicializado en main.dart
    _getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);
  }

  /// Registra todos los repositorios
  static void _registerRepositories() {
    // Repositories como Singletons (una sola instancia en toda la app)
    _getIt.registerSingleton<AuthenticationRepository>(
      AuthenticationRepository(DI.get<SupabaseClient>()),
    );

    _getIt.registerSingleton<UserRepository>(
      UserRepository(DI.get<SupabaseClient>()),
    );

    _getIt.registerSingleton<EmployeeRepositoryI>(EmployeeRepositoryI());
  }

  /// Registra casos de uso (Use Cases)
  static GoRouter _registerRouter(GoRouter router) {
    _getIt.registerSingleton<GoRouter>(router);
    return router;
  }

  /// Registra los BLoCs como Factory (nueva instancia cada vez)
  static void _registerBlocs() {
    // BLoCs como Factory para tener nueva instancia cada vez que se necesite
    // No los registramos aquí porque se manejan con BlocProvider en widgets
  }

  /// Limpia todas las dependencias registradas
  static Future<void> reset() async {
    await _getIt.reset();
  }
}

/// Helper methods para acceso fácil a las dependencias
class DI {
  /// Obtiene una instancia registrada
  static T get<T extends Object>() => ServiceLocator.instance<T>();

  /// Verifica si una dependencia está registrada
  static bool isRegistered<T extends Object>() =>
      ServiceLocator.instance.isRegistered<T>();
}

// Getters de acceso rápido (backward compatibility)
SupabaseClient get supabase => DI.get<SupabaseClient>();
AuthenticationRepository get authRepository =>
    DI.get<AuthenticationRepository>();
UserRepository get userRepository => DI.get<UserRepository>();
EmployeeRepositoryI get employeeRepository => DI.get<EmployeeRepositoryI>();
