import 'package:flutter/material.dart';

class QuestionNumBar extends StatelessWidget {
  final int index;

  QuestionNumBar(this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (index < 3) {
      return Card(
          child: Row(
        children: [
          Text(
            'Question no. ${index + 1}',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ));
    } else {
      return Container();
    }
  }
}
