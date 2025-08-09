import 'package:flutter/material.dart';
import 'package:pyme_erp/Presentation/screens/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pyme_erp/domain/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  ServiceLocatorSetup();

  final API_URL = dotenv.env['URL'];
  final API_KEY = dotenv.env['ANONKEY'];

  await Supabase.initialize(url: API_URL!, anonKey: API_KEY!);
  runApp(ERP());
}
