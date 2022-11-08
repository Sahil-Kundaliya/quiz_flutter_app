import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback keyvalue;
  Answer(this.keyvalue);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue, child: Text('Answer 3'), onPressed: keyvalue));
  }
}
