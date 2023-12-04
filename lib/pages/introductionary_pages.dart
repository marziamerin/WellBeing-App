import 'package:flutter/material.dart';
import 'package:wellbeing_app/pages/opening.dart';
import 'package:wellbeing_app/pages/screen-1.dart';
import 'package:wellbeing_app/pages/screen-2.dart';
import 'package:wellbeing_app/pages/screen-3.dart';

class Introductionary extends StatefulWidget {
  const Introductionary({super.key});

  @override
  State<Introductionary> createState() => _IntroductionaryState();
}

class _IntroductionaryState extends State<Introductionary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              IntroScreen1() ,
              IntroScreen2() ,
              IntroScreen3() ,
              Opening() ,
            ],
          )
        ],
      ),
    );
  }
}

