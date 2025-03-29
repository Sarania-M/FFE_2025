import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/pages/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> init() async {
    Future.delayed(Duration(seconds: 10), () {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomePage(),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // init();
    print("check");
    Future.delayed(Duration(seconds: 1), () {
      print("checking");
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomePage(),
          ),
        );
      }
    });
  }

  var logo = 'assets/images/nit_logo.png';
  var Title = "Todo applicastion";
  var textSize = 0.08;
  var logoSize = 0.1;

  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute<void>(
    //         builder: (BuildContext context) => const HomePage(),
    //       ),
    //     ));
    print("buil");
    return Scaffold(body: Center(child: Text("chjchbk")));
  }
}
