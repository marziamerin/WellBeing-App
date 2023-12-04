import 'package:flutter/material.dart';

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
              Container(
                color: Colors.deepPurple[400],
              ),
              Container(
                color: Colors.purple[100],
              ),
              Container(
                color: Colors.indigo[500],
              ),
              Container(
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage('assets/flower-unsplash.jpg'),
                 fit: BoxFit.cover),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome to'),
                    Text('WellBeing',)
                  ],
                )

              )
            ],
          )
        ],
      ),
    );
  }
}

