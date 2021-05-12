import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        width: double.infinity,
        child:
            // ignore: deprecated_member_use
            FlatButton(
          child: Text(
            answer,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          onPressed: selectHandler,
          textColor: Colors.black,
          color: Colors.white,
        ),
      ),
    );
  }
}
