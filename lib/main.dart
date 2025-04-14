import 'package:flutter/material.dart';
import 'package:test1/pages/home/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
