import 'package:flutter/material.dart';
import 'subject_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SplashContent();
  }
}

class _SplashContent extends StatefulWidget {
  @override
  __SplashContentState createState() => __SplashContentState();
}

class __SplashContentState extends State<_SplashContent> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => SubjectScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/quiz.png', width: 100, height: 100),
            SizedBox(height: 20),

            Text(
              "Flutter Quiz",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
