import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trabajadores/features/login/Presentation/bloc/login_bloc/login_bloc.dart';
import 'package:trabajadores/features/login/Presentation/widgets/login_tab.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final FocusNode _email = FocusNode();
  final FocusNode _password = FocusNode();
  final FocusNode _confirmedPassword = FocusNode();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmedPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            SizedBox(height: 20),
            
            SizedBox(height: 20),
            
            SizedBox(height: 20),
           

            SizedBox(height: 35),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (BuildContext context, state) {
                // if (state is Loading) {
                //   return const CircularProgressIndicator();
                // }

                return SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      if (password.text == confirmedPassword.text) {
                        // context.read<LoginBloc>().add(
                        // CreateUserEvent(email.text, password.text),);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text("Registrar", style: TextStyle(fontSize: 30)),
                  ),
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
    );
  }
}
