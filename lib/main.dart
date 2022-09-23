import 'package:flutter/material.dart';
import 'package:my_app/question.dart';

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
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
          ],
        ),
      ),
    );
  }
}
