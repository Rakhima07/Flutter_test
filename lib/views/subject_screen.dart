import 'package:flutter/material.dart';
import 'test_description_screen.dart';

class SubjectScreen extends StatelessWidget {
  final List<String> subjects = ['Flutter', 'SQL', 'Cybersecurity'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Выберите предмет")),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subjects[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TestDescriptionScreen(subject: subjects[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
