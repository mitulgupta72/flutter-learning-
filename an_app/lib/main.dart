import 'package:flutter/material.dart';
import './question.dart';
import './anawer.dart';

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
    const questions = [
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Anawer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(child: Text('you are done here')),
      ),
    );
  }
}
