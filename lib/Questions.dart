import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String Questionask;
  Questions(this.Questionask);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          Questionask,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
