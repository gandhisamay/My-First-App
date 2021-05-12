import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetIndex;

  Result(this.resetIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          'The quiz has been submitted.\nThank You !',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        Container(
          margin: EdgeInsets.all(25),
          // ignore: deprecated_member_use
          child: FlatButton(
              onPressed: resetIndex,
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
        )
      ],
    );
  }
}
