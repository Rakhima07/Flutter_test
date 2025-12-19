import 'package:flutter/material.dart';
import 'subject_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => SubjectScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Text(
          "Flutter Quiz",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
