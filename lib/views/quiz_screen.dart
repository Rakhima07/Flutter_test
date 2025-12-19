import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/question.dart';
import '../viewmodels/quiz_viewmodel.dart';
import '../services/question_service.dart';
import 'result_screen.dart';

class QuizScreen extends StatelessWidget {
  final String subject;

  const QuizScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizViewModel()
        ..loadQuestions(
          QuestionService.getQuestionsBySubject(subject),
        ),
      child: Consumer<QuizViewModel>(
        builder: (context, vm, _) {
          if (vm.isFinished) {
            return ResultScreen(result: vm.result);
          }

          final Question question = vm.currentQuestion;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Вопрос ${vm.currentIndex + 1}/${vm.questions.length}',
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    question.questionText,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ...List.generate(
                    question.options.length,
                    (index) {
                      return Card(
                        child: ListTile(
                          title: Text(question.options[index]),
                          onTap: vm.isAnswered
    ? null
    : () {
        vm.answer(index);
      },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
