import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './qustions.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var _totalScore = 0;

void _restartQuiz(){
  setState(() {
    questionIndex = 0;
    _totalScore =0;
  });
}

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "questionText": "What's your favourite Color",
        "answers": [
          {"text": "Red", "score": 2},
          {"text": "Blue", "score": 5},
          {"text": "Green", "score": 8},
          {"text": "Yellow", "score": 10}
        ]
      },
      {
        "questionText": "What's your favourite Animal",
        "answers": [
          {"text": "Dog", "score": 10},
          {"text": "Cat", "score": 6},
          {"text": "rabbit", "score": 0},
          {"text": "Cow", "score": 4}
        ]
      },
      {
        "questionText": "What's your favourite Place",
        "answers": [
          {"text": "Ahmd", "score": 10},
          {"text": "Vancouver", "score": 9},
          {"text": "New York", "score": 7},
          {"text": "Las Vegas", "score": 8}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Cool App"),
          ),
          body: questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _restartQuiz)),
    );
  }
}
