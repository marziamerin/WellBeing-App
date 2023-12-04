import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
  PageController _controller = PageController() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroScreen1() ,
              IntroScreen2() ,
              IntroScreen3() ,
              Opening() ,
            ],  ),
          Container (
            alignment: Alignment(0, 0.92),
            child: SmoothPageIndicator(controller: _controller, count: 4 )
          )

        ],
      ),
    );
  }
}

