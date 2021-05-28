import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 21) {
      resultText = 'your choices are pthatic';
    } else if (resultScore <= 24) {
      resultText = 'lil less pthatic';
    } else {
      resultText = 'you are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: resetHandler,
            child: Text('restart'),
          )
        ],
      ),
    );
  }
}
