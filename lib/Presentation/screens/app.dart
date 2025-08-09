import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyme_erp/config/go_router/router.dart';
import 'package:pyme_erp/domain/di/di.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeeEdit/employee_edit_bloc.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';
import 'package:pyme_erp/config/Themes/app_color.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';
import 'package:pyme_erp/features/login/data/repositories/autentication_repository.dart';
import 'package:pyme_erp/features/login/data/repositories/user_repository.dart';

class ERP extends StatelessWidget {
  const ERP({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticationRepository = AuthenticationRepository();
    final userRepository = UserRepository();

    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                LoginBloc(authenticationRepository: authenticationRepository),
          ),
          BlocProvider(
            create: (context) => AuthBloc(
              authenticationRepository: authenticationRepository,
              userRepository: userRepository,
            ),
          ),
          BlocProvider(create: (context) => EmployeesBloc()),
          BlocProvider(
            create: (context) => EmployeeEditBloc(employeeRepository),
          ),
        ],
        child: Builder(
          builder: (context) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: "ERP",
            theme: AppTheme().theme(),
            routerConfig: createRouter(context),
          ),
        ),
      ),
    );
  }
}
