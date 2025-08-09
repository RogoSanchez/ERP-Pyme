import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/Presentation/screens/home_page.dart';
import 'package:pyme_erp/features/human_resources/Presentation/human_resources.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/screen/create_employee_page.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/screen/employees_page.dart';
import 'package:pyme_erp/features/login/Presentation/Screen/login.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/auth_bloc/auth_bloc.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }
  late final StreamSubscription<dynamic> _subscription;
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

GoRouter createRouter(BuildContext context) {
  final authBloc = BlocProvider.of<AuthBloc>(context);

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/login',
    refreshListenable: GoRouterRefreshStream(authBloc.stream),
    redirect: (context, state) {
      final authState = authBloc.state;

      // Si NO está autenticado, solo puede ir a /login
      if (authState is Unauthenticated && state.matchedLocation != '/login') {
        return '/login';
      }

      // Si está autenticado y está en /login, redirige a /home
      if (authState is Authenticated && state.matchedLocation == '/login') {
        return '/home';
      }

      // Si está autenticado y accede a cualquier otra ruta, permite el acceso
      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(path: '/hr', builder: (context, state) => HumanResources()),
      GoRoute(path: '/employees', builder: (context, state) => EmployeesPage()),
      GoRoute(
        path: '/createEmployee',
        builder: (context, state) => CreateEmployee(),
      ),
      GoRoute(
        path: '/editEmployee/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return CreateEmployee(id: id);
        },
      ),
    ],
  );
}
