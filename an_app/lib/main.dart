import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print('answerquestion invoked');
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': "who is your favorate player",
        'answers': [
          {'text': 'virat', 'score': 10},
          {'text': 'dhoni', 'score': 9},
          {'text': 'sachin', 'score': 8},
          {'text': 'rahul', 'score': 7},
        ],
      },
      {
        'questionText': "who is your favorate animal",
        'answers': [
          {'text': 'mitul', 'score': 10},
          {'text': 'lion', 'score': 9},
          {'text': 'elephant', 'score': 8},
          {'text': 'snake', 'score': 7},
        ],
      },
      {
        'questionText': "what is your favorate color",
        'answers': [
          {'text': 'white', 'score': 10},
          {'text': 'black', 'score': 9},
          {'text': 'red', 'score': 8},
          {'text': 'yellow', 'score': 7},
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('my first app'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuiz)));
  }
}
