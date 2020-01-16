import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final List answers;
  Function answered;

  Answers(this.answers, this.answered);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ...answers.map((answer) {
          return RaisedButton(
              child: Text(answer["Text"]),
              onPressed: () => this.answered(answer["Score"]));
        })
      ],
    ));
  }
}
