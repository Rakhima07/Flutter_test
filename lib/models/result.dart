class Result {
  final int correctAnswers;
  final int totalQuestions;
  Result({required this.correctAnswers, required this.totalQuestions});
  double get percentage => correctAnswers / totalQuestions * 100;
  bool get isPassed => percentage >= 80;
}
