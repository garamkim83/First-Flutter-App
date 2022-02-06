import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle bStyle = ElevatedButton.styleFrom(
      primary: Colors.orange,
    );

    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: bStyle,
        onPressed: () {
          selectHandler();
        },
        child: Text(
          answerText,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
