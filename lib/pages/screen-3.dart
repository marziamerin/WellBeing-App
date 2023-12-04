import 'package:flutter/material.dart';


class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.indigo[500],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('To create the best version of \n YOU',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19, letterSpacing: 1.0,
                fontFamily: 'PlayfairDisplay'),
            textAlign: TextAlign.center,
          ),
          Image.asset('assets/meditation.png', height: 200, width: 160,),

        ],
      ),
    );
  }
}
