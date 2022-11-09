import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz.dart';
import 'package:quiz_app/Result.dart';

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
  var totalScore = 0;

  void Restartquiz() {
    setState(() {
      questionindex = 0;
      totalScore = 0;
    });
  }

  var questionsList = [
    {
      'QuestionText': 'what is your favorite color?',
      'AnswerList': [
        {'text': 'black', 'score': 4},
        {'text': 'pink', 'score': 5},
        {'text': 'white', 'score': 5},
        {'text': 'red', 'score': 7}
      ]
    },
    {
      'QuestionText': 'what is your favorite Anime?',
      'AnswerList': [
        {'text': 'jujusu', 'score': 7},
        {'text': 'goku', 'score': 3},
        {'text': 'naruto', 'score': 1},
        {'text': 'luffy', 'score': 5}
      ]
    },
    {
      'QuestionText': 'what is your favorite angent?',
      'AnswerList': [
        {'text': 'jett', 'score': 1},
        {'text': 'raze', 'score': 3},
        {'text': 'ko', 'score': 7},
        {'text': 'omen', 'score': 5}
      ]
    }
  ];
  void function(int score) {
    totalScore += score;
    setState(() => questionindex = questionindex + 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: questionindex < questionsList.length
            // here is if/else
            ? Quiz(questionindex, questionsList, function) //if     // class
            : Result(totalScore, Restartquiz), //else         //class
      ),
    );
  }
}
