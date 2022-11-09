import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback keyvalue;
  final String answers;
  Answer(this.keyvalue, this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue, child: Text(answers), onPressed: keyvalue));
  }
}
