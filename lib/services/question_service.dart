import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/question.dart';

class QuestionService {
  static Future<List<Question>> getQuestionsBySubject(String subject) async {
    try {
      final String jsonString =
          await rootBundle.loadString('assets/questions.json');

      final List<dynamic> jsonData = json.decode(jsonString);

      final List<Question> allQuestions =
          jsonData.map((e) => Question.fromJson(e)).toList();

      return allQuestions
          .where((q) => q.subject == subject)
          .toList();
    } catch (e) {
      return [];
    }
  }
}
