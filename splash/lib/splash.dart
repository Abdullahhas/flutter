
import 'package:flutter/material.dart';
import 'dart:async';
import 'homescreen.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    
   Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
  
  
   Widget build(BuildContext context) {
    
        return Scaffold(
      backgroundColor: Colors.blue, // Splash screen background color
      body: Center(
        child: Text(
          'Welcome to My App!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

