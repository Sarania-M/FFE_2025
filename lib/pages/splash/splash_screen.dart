import 'package:flutter/material.dart';
import 'package:test1/pages/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> init() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  var logo = 'assets/images/nit_logo.png';
  var Title = "Todo applicastion";
  var textSize = 0.08;
  var logoSize = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 100),
              child: Image.asset(logo),
            ),
            Text(Title, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
