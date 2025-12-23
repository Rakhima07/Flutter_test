class Question {
  final String questionText;
  final List<String> options;
  final int correctIndex;
  final String subject;
  final String topic;

  Question({
    required this.questionText,
    required this.options,
    required this.correctIndex,
    required this.subject,
    required this.topic,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      questionText: json['text'],
      options: List<String>.from(json['options']),
      correctIndex: json['correctIndex'],
      subject: json['subject'],
      topic: json['topic'],
    );
  }
}
