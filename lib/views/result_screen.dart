import 'package:flutter/material.dart';
import '../models/result.dart';
import 'subject_screen.dart';

class ResultScreen extends StatelessWidget {
  final Result result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Результат')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Правильных ответов: ${result.correctAnswers}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Процент: ${result.percentage.toStringAsFixed(0)}%',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 24),
              Text(
                result.isPassed ? 'Тест пройден' : 'Тест не пройден',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: result.isPassed ? Colors.green : Colors.red,
                ),
              ),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Пройти снова'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => SubjectScreen()),
                      (route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
