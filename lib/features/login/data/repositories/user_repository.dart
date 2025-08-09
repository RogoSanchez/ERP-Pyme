import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:pyme_erp/domain/di/di.dart';

class UserRepository {
  Future<User?> getUser() async {
    final current_user = supabase.auth.currentUser;
    if (current_user != null) return current_user;
    return null;
  }
}
