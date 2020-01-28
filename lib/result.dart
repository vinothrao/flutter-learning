import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("All questions are answered.Your total score is " +
              totalScore.toString()),
        ],
      ),
    );
  }
}
