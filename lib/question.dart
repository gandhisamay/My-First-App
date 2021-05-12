import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          margin: EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 10),
          width: double.infinity,
          child: Text(
            questionText,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          )),
    );
  }
}
