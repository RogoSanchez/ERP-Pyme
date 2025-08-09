import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pyme_erp/features/login/Presentation/bloc/login_bloc/login_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key, required this.focusNode});

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (LoginBloc bloc) => bloc.state.password.displayError,
    );

    return TextField(
      key: const Key('loginForm_passwordInput_textField'),
      onChanged: (password) {
        context.read<LoginBloc>().add(LoginEvent.passwordChanged(password));
      },
      obscureText: true,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        filled: true,
        fillColor: Colors.white,
        labelStyle: TextStyle(color: Colors.black, fontSize: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        errorText: displayError != null ? 'invalid password' : null,
      ),
    );
  }
}
