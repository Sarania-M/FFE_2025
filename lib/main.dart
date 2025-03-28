import 'package:flutter/material.dart';
import 'package:test1/pages/splash/splash_screen.dart';
// import 'package:provider/provider.dart';
// // import 'counter.dart';
// import 'prov_counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(), debugShowCheckedModeBanner: false,);
  }
}
