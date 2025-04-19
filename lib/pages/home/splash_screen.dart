import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test1/pages/home/login_page.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

   
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(_fadeRoute(LoginScreen()));
    });
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 229, 229), 
      body: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min, 
    children: [
      Text(
        'To-Do application',
        style: TextStyle(
          fontFamily: 'springegg',
          fontSize: 40,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      SizedBox(height: 18), 
      Text(
        'Developed by Madhurjya B Sarania',
        style: TextStyle(
         
          fontSize: 28,
          color: Colors.grey[700],
        ),
      ),
    ],
  ),
),

     
    );
  }
}

Route _fadeRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 500), 
  );
}