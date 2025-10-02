// import 'package:pyme_erp/domain/di/di.dart';

/// Ejemplos de diferentes patrones de Dependency Injection con GetIt
///
/// Esto te ayudará a entender los conceptos:
/// - Singleton: Una sola instancia en toda la app
/// - LazySingleton: Se crea solo cuando se necesita por primera vez
/// - Factory: Nueva instancia cada vez que se solicita
/// - Instance: Registra una instancia ya creada
class DIExamples {
  /// Ejemplo 1: Registrar como Singleton
  /// Se crea inmediatamente y hay solo una instancia
  static void registerSingleton() {
    // ServiceLocator.instance.registerSingleton<MyService>(MyService());
    // Una vez registrado, siempre devuelve la misma instancia
  }

  /// Ejemplo 2: Registrar como LazySingleton
  /// Se crea solo cuando se solicita por primera vez
  static void registerLazySingleton() {
    // ServiceLocator.instance.registerLazySingleton<MyService>(() => MyService());
    // Más eficiente en memoria porque se crea solo si se usa
  }

  /// Ejemplo 3: Registrar como Factory
  /// Nueva instancia cada vez que se solicita
  static void registerFactory() {
    // ServiceLocator.instance.registerFactory<MyService>(() => MyService());
    // Útil para objetos que necesitan estado independiente
  }

  /// Ejemplo 4: Registrar con dependencias
  /// Un servicio que depende de otros servicios
  static void registerWithDependencies() {
    // ServiceLocator.instance.registerLazySingleton<UserService>(
    //   () => UserService(
    //     apiClient: DI.get<ApiClient>(),
    //     database: DI.get<Database>(),
    //   ),
    // );
  }

  /// Ejemplo 5: Registro condicional
  /// Diferentes implementaciones según el entorno
  static void registerConditional() {
    // if (isProduction) {
    //   ServiceLocator.instance.registerSingleton<ApiClient>(ProductionApiClient());
    // } else {
    //   ServiceLocator.instance.registerSingleton<ApiClient>(MockApiClient());
    // }
  }

  /// Ejemplo 6: Usar las dependencias registradas
  static void useDependencies() {
    // Obtener una dependencia
    // final userService = DI.get<UserService>();

    // Verificar si está registrada
    // if (DI.isRegistered<UserService>()) {
    //   final service = DI.get<UserService>();
    // }

    // Usar con null safety
    // final service = ServiceLocator.instance.getOrNull<UserService>();
  }
}

/// Ventajas del Dependency Injection:
///
/// 1. **Testability**: Fácil mockear dependencias en tests
/// 2. **Maintainability**: Cambios centralizados en un lugar
/// 3. **Decoupling**: Clases no dependen de implementaciones concretas
/// 4. **Flexibility**: Diferentes implementaciones según el contexto
/// 5. **Single Responsibility**: Cada clase se enfoca en su función
///
/// Tipos de registro:
///
/// - **Singleton**: Una instancia para toda la app (ej: Repository, ApiClient)
/// - **LazySingleton**: Como Singleton pero se crea solo cuando se necesita
/// - **Factory**: Nueva instancia cada vez (ej: BLoCs, ViewModels)
/// - **Instance**: Registra una instancia ya existente
///
/// Cuándo usar cada uno:
///
/// - **Singleton/LazySingleton**: Repositories, Services, API Clients
/// - **Factory**: BLoCs, Controllers, ViewModels
/// - **Instance**: Objetos externos como Supabase, Databases
