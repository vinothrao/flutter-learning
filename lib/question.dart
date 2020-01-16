import 'package:flutter/cupertino.dart';

class Questions extends StatelessWidget {
  String question;

  Questions(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
