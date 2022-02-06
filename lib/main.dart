//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Whale', 'Rabbit'],
      },
      {
        'questionText': 'Birth month?',
        'answers': ['1', '2', '3', 'other'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: Column(
          children: [
            //혹은 Text(questions.elementAt(0)),
            //Text(questions[_questionIndex]),

            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            /*
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 4 chosen!'),
              child: Text('Answer 4'),
            ),
            Answer(_answerQuestion),
            */
          ],
        ),
      ),
    );
  }
}
