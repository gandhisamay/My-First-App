import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler; 

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      color: Colors.blue,
      child: 
      // ignore: deprecated_member_use
      RaisedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    )
  }
}
