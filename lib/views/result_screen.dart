import 'package:flutter/material.dart';
import '../models/result.dart';
import 'subject_screen.dart';
import 'splash_screen.dart';

class ResultScreen extends StatelessWidget {
  final Result result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Результат')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Правильных ответов: ${result.correctAnswers}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8),
              Text(
                'Процент: ${result.percentage.toStringAsFixed(0)}%',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 24),

              Text(
                result.description,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: result.isPassed ? Colors.green : Colors.orange,
                ),
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Пройти ещё раз'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => SubjectScreen()),
                      (route) => false,
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  child: const Text('На главную'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => SplashScreen()),
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
