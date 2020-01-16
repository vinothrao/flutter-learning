import 'package:flutter/material.dart';
import 'package:quiz_app_new/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionAnswers;
  final int questionCount;
  final Function nextQuestion;

  Quiz(this.questionAnswers, this.questionCount, this.nextQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questionAnswers[questionCount]["questionText"]),
        Answers(questionAnswers[questionCount]["answers"], nextQuestion)
      ],
    );
  }
}
