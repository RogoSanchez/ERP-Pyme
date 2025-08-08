import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:trabajadores/domain/di/di.dart';

Future<AuthResponse> CreateUser(String email, String password) async {
  try {
    final AuthResponse res = await supabase.auth.signUp(
      email: email,
      password: password,
    );
    return res;
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
    rethrow;
  }
}

Future<AuthResponse> SignIn(String email, String password) async {
  try {
    final AuthResponse res = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return res;
  } catch (e) {
    rethrow;
  }
}

Future<void> SignInWithGoogle() async {
  await supabase.auth.signInWithOAuth(OAuthProvider.google);
}
