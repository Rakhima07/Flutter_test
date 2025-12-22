import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/question.dart';
import '../viewmodels/quiz_viewmodel.dart';
import '../services/question_service.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String subject;

  const QuizScreen({super.key, required this.subject});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late QuizViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = QuizViewModel();

    QuestionService.getQuestionsBySubject(widget.subject)
        .then(vm.loadQuestions);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: vm,
      child: Consumer<QuizViewModel>(
        builder: (context, vm, _) {
          if (vm.questions.isEmpty) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

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

                  // 🔵 ВАРИАНТЫ ОТВЕТОВ
                  ...List.generate(
                    question.options.length,
                    (index) {
                      final bool isSelected =
                          vm.selectedIndex == index;

                      return Card(
                        color: isSelected
                            ? Colors.blue.shade100
                            : null,
                        child: ListTile(
                          title: Text(
                            question.options[index],
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.blue.shade900
                                  : null,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                          onTap: vm.isAnswered
                              ? null
                              : () => vm.answer(index),
                        ),
                      );
                    },
                  ),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: vm.isAnswered
                          ? vm.nextQuestion
                          : null,
                      child: const Text('Следующий вопрос'),
                    ),
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
