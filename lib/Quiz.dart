import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int index;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  Quiz({this.index, this.answerQuestion, this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[index]['questionText']),
      ...(questions[index]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ]);
  }
}
