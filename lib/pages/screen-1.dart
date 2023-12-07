import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
     child: SafeArea(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             alignment: Alignment(0, 0.59),
             child: Text('Take a deep breath and \n    Calm your mind' ,
               style: TextStyle(
                 color: Colors.deepPurple[400],
                 shadows: [
                   Shadow(
                     color: Colors.black26,
                     blurRadius: 2.0,
                     offset: Offset(2.0, 2.0),
                   ),
                 ],
                   fontWeight: FontWeight.bold,
                   fontSize: 20, letterSpacing: 1.0,
                   fontFamily: 'PlayfairDisplay', ),
                   textAlign: TextAlign.center ,
             ),
           ),
           Image.asset('assets/take a deep breath.jpg', height: 550, width: 250,),

         ],
       ),
     )

    );
   }
  }

