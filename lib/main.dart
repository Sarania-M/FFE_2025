import 'package:flutter/material.dart';
import 'package:test1/pages/home/splash_screen.dart';

// ...




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WelcomeScreen());
  }
}
