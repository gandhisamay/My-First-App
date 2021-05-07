import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var questions = ['What is your gender ?', 'How is your health ?'];
  var answers = [
    ['Male', 'Female', 'Transgender'],
    ['Excellent', 'Good', 'Bad']
  ];

  void answerQuestion() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Column(
              children: [
                Question(questions[index]),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text(answers[index][0]), onPressed: answerQuestion),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text(answers[index][1]), onPressed: answerQuestion),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text(answers[index][2]), onPressed: answerQuestion),
              ],
            )));
  }
}
