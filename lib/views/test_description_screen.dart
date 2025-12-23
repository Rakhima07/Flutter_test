import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class TestDescriptionScreen extends StatelessWidget {
  final String subject;

  const TestDescriptionScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final TextStyle rulesTextStyle = const TextStyle(fontSize: 20);

    final List<String> points = [
      'Тест состоит из 10 вопросов',
      'Один правильный ответ',
      'Возврат к предыдущим вопросам невозможен',
      'Результат отображается сразу',
      '80% и выше — тест пройден',
    ];

    return Scaffold(
      appBar: AppBar(title: Text(subject)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Описание теста',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            ...points.map(
              (point) => Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text('• $point', style: rulesTextStyle),
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text('Начать тест'),
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
            ),
          ],
        ),
      ),
    );
  }
}
