import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final scorePoint;
  final VoidCallback Restartquiz;

  Result(this.scorePoint, this.Restartquiz);

  String get resultPhase {
    var resultPoint;

    if (scorePoint <= 10) {
      resultPoint = 'your are very Good';
    } else if (scorePoint <= 15) {
      resultPoint = 'your are Good';
    } else if (scorePoint <= 18) {
      resultPoint = 'your are not bad';
    } else {
      resultPoint = 'Die already';
    }
    return resultPoint;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhase,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(child: Text('Restart Quiz'), onPressed: Restartquiz),
      ],
    ));
  }
}
