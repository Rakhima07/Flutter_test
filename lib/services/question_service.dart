import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/question.dart';
import 'package:flutter/material.dart';

class QuestionService {
  static Future<List<Question>> getQuestionsBySubject(String subject) async {
    try {
      final String jsonString =
          await rootBundle.loadString('assets/questions.json');

      final List<dynamic> jsonData = json.decode(jsonString);

      final List<Question> allQuestions =
          jsonData.map((e) => Question.fromJson(e)).toList();

    
      return allQuestions.where((q) {
        switch (subject) {
          case 'Flutter':
            return q.topic == 'dart' || q.topic == 'widgets';
          case 'Architecture':
            return q.topic == 'architecture' || q.topic == 'project';
          default:
            return false;
        }
      }).toList();
    } catch (e) {
      debugPrint('Ошибка загрузки вопросов: $e');
      return [];
    }
  }
}
