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
  void _answerQuestion() {
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
        'answers': ['virat', 'dhoni', 'sachin', 'rahul'],
      },
      {
        'questionText': "who is your favorate animal",
        'answers': ['goat', 'elephant', 'snake', 'lion'],
      },
      {
        'questionText': "what is your favorate color",
        'answers': ['white', 'black', 'red', 'brown'],
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
                : Result()));
  }
}
