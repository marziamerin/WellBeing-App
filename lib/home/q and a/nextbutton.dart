import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key , required this.nextQuestion}): super(key: key);
  final VoidCallback nextQuestion;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        height: 30, width: 50, alignment: Alignment.center,
        child: Text(
          'Next', textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white54,
          ),

      ),
    );
  }
}
