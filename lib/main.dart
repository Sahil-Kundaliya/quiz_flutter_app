import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppSt();
  }
}

class MyAppSt extends State<MyApp> {
  var questionindex = 0;
  void function() {
    setState(() => questionindex = questionindex + 1);
  }

  @override
  Widget build(BuildContext context) {
    var Questionslist = [
      {'QuestionText': 'what is your favorite color?',
      'Answer': ['black','pink','white','red']};

      {'QuestionText': 'what is your favorite Anime?',
        'Answer': ['jujusu','goku','naruto','luffy']};

      {'QuestionText': 'what is your favorite angent?',
        'Answer': ['jett','raze','ko','omen']}

    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Column(
            children: [
              (Questions(Questionslist[questionindex])),
              Answer(function),
              Answer(function),
              Answer(function),
            ],
          )),
    );
  }
}
