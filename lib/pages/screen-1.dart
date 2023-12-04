import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[400],
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Take a deep breath',
           style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20, letterSpacing: 1.0,
               fontFamily: 'PlayfairDisplay'),
               textAlign: TextAlign.end,
         ),
         Image.asset('assets/yoga-svgrepo-com.png', height: 200, width: 160,),

       ],
     )

    );
   }
  }

