import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trabajadores/features/login/Presentation/bloc/login_bloc/login_bloc.dart';

class UsernameInput extends StatelessWidget {
      final FocusNode focusNode;

  const UsernameInput({super.key, required this.focusNode});

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (LoginBloc bloc) => bloc.state.username.displayError,
    );

    return TextField(
      key: const Key('loginForm_usernameInput_textField'),
      onChanged: (username) {
        context.read<LoginBloc>().add(LoginEvent.usernameChanged(username));
      },
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        
        labelStyle: TextStyle(color: Colors.black, fontSize: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        labelText: 'Correo Electrónico',
        errorText: displayError != null ? 'invalid username' : null,
      ),
    );
  }
}
