import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wellbeing_app/pages/opening.dart';
import 'package:wellbeing_app/pages/screen-1.dart';
import 'package:wellbeing_app/pages/screen-2.dart';


class Introductionary extends StatefulWidget {
  const Introductionary({super.key});

  @override
  State<Introductionary> createState() => _IntroductionaryState();
}

class _IntroductionaryState extends State<Introductionary> {
  PageController _controller = PageController() ;
  bool isLastPage = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2 );
            },
            children: [
              IntroScreen1() ,
              IntroScreen2() ,
              Opening() ,
            ],  ),
          Container (
            alignment: Alignment(0, 0.92),
            child: SmoothPageIndicator(controller: _controller, count: 3 ,
              effect: ScaleEffect(
                spacing: 10 ,
                dotColor: Colors.black12 ,
                activeDotColor: Colors.deepPurpleAccent ,
              ),
            )
          )

        ],
      ),
    );
  }
}

