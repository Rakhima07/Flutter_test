import 'package:flutter/material.dart';
import 'test_description_screen.dart';

class SubjectScreen extends StatelessWidget {
  final List<String> subjects = ['Flutter', 'SQL', 'Cybersecurity'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Выберите предмет")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: subjects.map((subject) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TestDescriptionScreen(subject: subject),
                    ),
                  );
                },
                child: Text(
                  subject,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
