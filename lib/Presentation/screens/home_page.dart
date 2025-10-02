import 'package:app_theme/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primary),
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).push('/hr');
              },
              child: Text("Recursos Humanos"),
            ),
            TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                  AuthEvent.authenticationLogoutPressed(),
                );
              },
              child: Text("Cerrar sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
