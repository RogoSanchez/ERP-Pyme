import 'package:app_theme/ui/widgets/size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/config/Themes/app_color.dart';
import 'package:pyme_erp/domain/network/Supabase/auth_supabase.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';
import 'package:pyme_erp/features/login/Presentation/widgets/password_input.dart';
import 'package:pyme_erp/features/login/Presentation/widgets/login_button.dart';
import 'package:pyme_erp/features/login/Presentation/widgets/username_input.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  static const _padding = EdgeInsets.only(right: 50, left: 50);
  static const _titleStyle = TextStyle(
    fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go('/signup');
              },
              child: Text('No tienes cuenta?'),
            ),
          ),
        ],
      ),
      body: Container(
        padding: _padding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppSizeBox.v20,
              const Text("Iniciar Sesión", style: _titleStyle),
              AppSizeBox.v32,
              SizedBox(child: UsernameInput(focusNode: _emailFocus)),
              AppSizeBox.v20,
              SizedBox(child: PasswordInput(focusNode: _passwordFocus)),

              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Olvidaste tu contraseña?"),
                ),
              ),
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.status == FormzSubmissionStatus.success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('¡Inicio existoso!'),
                        backgroundColor: Theme.of(context).colorScheme.success,
                      ),
                    );
                  } else if (state.status == FormzSubmissionStatus.failure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.error?.message ?? 'Error inesperado',
                        ),
                        backgroundColor: Theme.of(context).colorScheme.error,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    height: 50.h,
                    width: 300.h,
                    child: LoginButton(),
                  );
                },
              ),

              SizedBox(
                height: 60.h,
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 20),
                  child: dividerWithText("or"),
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 300.h,
                child: ElevatedButton(
                  onPressed: () {
                    SignInWithGoogle();
                  },

                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    backgroundColor: Colors.white, // Fondo opcional
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset('assets/icons/google.ico', height: 20.h),
                      Text(
                        "Continuar con Google",

                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              AppSizeBox.v14,
            ],
          ),
        ),
      ),
    );
  }
}

Widget dividerWithText(String text) {
  return Row(
    children: [
      Expanded(
        child: Divider(
          thickness: 1,
          color: const Color.fromARGB(255, 46, 35, 35),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 15,
          ),
        ),
      ),
      Expanded(
        child: Divider(
          thickness: 1,
          color: const Color.fromARGB(255, 46, 35, 35),
        ),
      ),
    ],
  );
}
