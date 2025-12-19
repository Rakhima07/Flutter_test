import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class TestDescriptionScreen extends StatelessWidget {
  final String subject;

  const TestDescriptionScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Описание теста',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('• Тест состоит из 10 вопросов'),
            Text('• Один правильный ответ'),
            Text('• Возврат к предыдущим вопросам невозможен'),
            Text('• Результат отображается сразу'),
            Text('• 80% и выше — тест пройден'),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Начать тест'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuizScreen(subject: subject),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
