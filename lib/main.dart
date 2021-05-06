import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
    return MyAppState();
  }
}

class  MyAppState extends State<MyApp> {
  var index = 0;
  var questions = ['What is your gender?',
                   'How is your health ?'];

  var options = [['Male','Female','TransGender'],
                 ['Excellent','Good','Bad']];
  void answerQuestion()
  {
    setState((){
      index = index + 1;
      });
  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home : Scaffold(
      appBar: AppBar(
      title : Text('My First App'),),

      body : Column(
        children:
        Text(questions[index]),
        // ignore: deprecated_member_use
        RaiseButton(
          child:Text(answers[index][0]),
          onPress : answerQuestion),
        // ignore: deprecated_member_use
        RaisedButton(
          child:Text(answers[index][1]),
          OnPressed : answerQuestion),
        // ignore: deprecated_member_use
        RaisedButton(
          child:Text(answers[index][2])),
          OnPressed : answerQuestion)));
  }
}
