import 'package:flutter/material.dart';

class TherapyQuestion extends StatelessWidget {
  const TherapyQuestion({Key? key,
  required this.question,
  required this.indexAction,
required this.totalQuestions}) : super(key: key);
  final String question;
  final int indexAction;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Question ${ indexAction + 1}/$totalQuestions: $question',
        style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15 , fontFamily: 'PlayfairDisplay',
          color: Colors.black ,
        ),
      ),
    );
  }
}
