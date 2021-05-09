import 'dart:html';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'The quiz has been submitted.\nThank You !',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ));
  }
}
