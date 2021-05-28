import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

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
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    );
  }
}
