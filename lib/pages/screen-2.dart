import 'package:flutter/material.dart';


class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Calm your mind and \n Find your true potential ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18, letterSpacing: 1.0,
                fontFamily: 'PlayfairDisplay'),
                textAlign: TextAlign.center,
          ),
          Image.asset('assets/calm.png', height: 200, width: 160,),

        ],
      ),
    );
  }
}
