import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/Questions.dart';

class Quiz extends StatelessWidget {
  var questionsList;
  var questionindex;
  var function;
  Quiz(this.questionindex, this.questionsList, this.function);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
            questionsList[questionindex]['QuestionText'] as String), //class
        ...(questionsList[questionindex]['AnswerList']
                as List<Map<String, Object>>)
            .map((AnswerList) {
          return Answer(
              () => function(AnswerList['score']), // class
              AnswerList['text'] as String);
        }).toList()
      ],
    );
  }
}
