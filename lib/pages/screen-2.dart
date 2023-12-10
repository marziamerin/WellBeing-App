import 'package:flutter/material.dart';


class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

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
              child: Text ('Set yourself free and \n Create the best version of YOU',
                style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                    fontSize: 20, letterSpacing: 1.0,
                    fontFamily: 'PlayfairDisplay' ,
                    color: Colors.indigo[500] ),
                    textAlign: TextAlign.center,
              ),
            ),
            Image.asset('assets/vector.jpg', height: 550, width: 260,),

          ],
        ),
      ),
    );
  }
}
