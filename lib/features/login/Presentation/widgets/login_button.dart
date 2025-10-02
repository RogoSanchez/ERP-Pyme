import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        debugPrint('Login button state: ${state.status}'); // Debug
        if (state.status == FormzSubmissionStatus.success) {
          debugPrint('Login success, waiting for navigation'); // Debug
        }
      },
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.isValid != current.isValid,
      builder: (context, state) {
        if (state.status == FormzSubmissionStatus.inProgress) {
          return const SizedBox(
            height: 50,
            width: 50,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        return SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            key: const Key('loginForm_continue_raisedButton'),
            onPressed:() {
                    context.read<LoginBloc>().add(
                      const LoginEvent.loginSubmitted(),
                    );
                  },
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              foregroundColor: Colors.white,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: const Text("Entrar", style: TextStyle(fontSize: 30)),
          ),
        );
      },
    );
  }
}
