import 'package:flutter/material.dart';
import '../models/question.dart';
import '../models/result.dart';

class QuizViewModel extends ChangeNotifier {
  final List<Question> _questions = [];

  int _currentIndex = 0;
  int _correctAnswers = 0;
  bool _isAnswered = false;

  List<Question> get questions => _questions;
  int get currentIndex => _currentIndex;
  int get correctAnswers => _correctAnswers;
  bool get isAnswered => _isAnswered;

  void loadQuestions(List<Question> questions) {
    _questions
      ..clear()
      ..addAll(questions);

    _currentIndex = 0;
    _correctAnswers = 0;
    _isAnswered = false;

    notifyListeners();
  }

  Question get currentQuestion => _questions[_currentIndex];

  double get progress {
    if (_questions.isEmpty) return 0;
    return (_currentIndex + 1) / _questions.length;
  }

  void answer(int selectedIndex) {
    if (_isAnswered) return;

    _isAnswered = true;

    if (_questions[_currentIndex].correctIndex == selectedIndex) {
      _correctAnswers++;
    }

    notifyListeners();
  }

  void nextQuestion() {
    if (!_isAnswered) return;

    _currentIndex++;
    _isAnswered = false;

    notifyListeners();
  }

  bool get isFinished => _currentIndex >= _questions.length;

  Result get result => Result(
        correctAnswers: _correctAnswers,
        totalQuestions: _questions.length,
      );
}
