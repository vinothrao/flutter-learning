import 'package:flutter/material.dart';
import 'package:quiz_app_new/result.dart';
import './quiz.dart';

void main() => runApp(QuestionAnswer());

class QuestionAnswer extends StatefulWidget {
  @override
  _QuestionAnswerState createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  var questionCount = 0;
  int totalScore = 0;

  void nextQuestion(int score) {
    totalScore += score;
    setState(() {
      questionCount = questionCount + 1;
    });
  }

  var questionAnswers = [
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"Text": "Blue", "Score": 1},
        {"Text": "Red", "Score": 2},
        {"Text": "Orange", "Score": 3}
      ]
    },
    {
      "questionText": "What is favourite game?",
      "answers": [
        {"Text": "Hockey", "Score": 1},
        {"Text": "Cricket", "Score": 2},
        {"Text": "Football", "Score": 3}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz"),
          ),
          body: questionCount < questionAnswers.length
              ? Quiz(questionAnswers, questionCount, nextQuestion)
              : Result(totalScore)),
    );
  }
}
