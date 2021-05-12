import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

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
  var questions = [
    {
      'questionText': 'What is your favourite color ?',
      'answers': ['blue', 'black', 'green', 'red'],
    },
    {
      'questionText': 'What is your favourite animal ?',
      'answers': ['cat', 'dog', 'horse', 'lion'],
    },
    {
      'questionText': 'How is your health?',
      'answers': ['excellent', 'good', 'bad', 'severe'],
    }
  ];

  void answerQuestion() {
    setState(() {
      index += 1;
    });
  }

  void resetIndex() {
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Personality Check'),
        backgroundColor: Colors.blue,
      ),
      body: index < questions.length
          ? Quiz(
              answerQuestion: answerQuestion,
              index: index,
              questions: questions,
            )
          : Result(resetIndex),
    ));
  }
}
