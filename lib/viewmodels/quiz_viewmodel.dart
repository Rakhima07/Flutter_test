import 'package:flutter/material.dart';
import '../models/question.dart';
import '../models/result.dart';

class QuizViewModel extends ChangeNotifier {
  final List<Question> _questions = [];

  int _currentIndex = 0;
  int _correctAnswers = 0;
  int? _selectedIndex;

  List<Question> get questions => _questions;
  int get currentIndex => _currentIndex;
  int get correctAnswers => _correctAnswers;
  int? get selectedIndex => _selectedIndex;

  Question get currentQuestion => _questions[_currentIndex];

  bool get isFinished => _currentIndex >= _questions.length;

  void loadQuestions(List<Question> questions) {
    _questions
      ..clear()
      ..addAll(questions);

    _currentIndex = 0;
    _correctAnswers = 0;
    _selectedIndex = null;

    notifyListeners();
  }

  void selectAnswer(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void nextQuestion() {
    if (_selectedIndex == null) return;

    if (_questions[_currentIndex].correctIndex == _selectedIndex) {
      _correctAnswers++;
    }

    _currentIndex++;
    _selectedIndex = null;

    notifyListeners();
  }

  Result get result => Result(
        correctAnswers: _correctAnswers,
        totalQuestions: _questions.length,
      );
}
