import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';
import 'package:pyme_erp/features/login/Presentation/widgets/login_tab.dart';
import 'package:pyme_erp/features/login/Presentation/widgets/password_input.dart';
import 'package:pyme_erp/features/login/Presentation/widgets/username_input.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final FocusNode _email = FocusNode();
  final FocusNode _password = FocusNode();
  final FocusNode _confirmedPassword = FocusNode();
  final TextEditingController confirmedPassword = TextEditingController();

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
                GoRouter.of(context).go('/login');
              },
              child: Text('Tienes cuenta?'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppSizeBox.v20,
              SizedBox(
                child: Text(
                  "Crear Cuenta",
                  style: TextStyle(
                    fontSize: 35.h,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AppSizeBox.v32,
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return UsernameInput(focusNode: _email);
                },
              ),
              SizedBox(height: 20),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return PasswordInput(focusNode: _password);
                },
              ),
              SizedBox(height: 20),
              // Campo para confirmar contraseña
              TextField(
                controller: confirmedPassword,
                focusNode: _confirmedPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmar Contraseña',
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              SizedBox(height: 35),
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.status == FormzSubmissionStatus.success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('¡Cuenta creada exitosamente!'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  } else if (state.status == FormzSubmissionStatus.failure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.error?.message ?? 'Error al crear la cuenta',
                        ),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 4),
                      ),
                    );
                  }
                },
                builder: (BuildContext context, state) {
                  return Column(
                    children: [
                      // Botón
                      if (state.status == FormzSubmissionStatus.inProgress)
                        const CircularProgressIndicator()
                      else
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                                    context.read<LoginBloc>().add(
                                      LoginEvent.signUpSubmitted(),
                                    );
                                  }
                            ,
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: 2,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              foregroundColor: Colors.white,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                            ),
                            child: Text(
                              "Registrar",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 20),
                child: dividerWithText("or"),
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
      
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset('assets/icons/google.ico', height: 20),
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
