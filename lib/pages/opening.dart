import 'package:flutter/material.dart';

class Opening extends StatelessWidget {
  const Opening({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/flower-unsplash.jpg'),
            fit: BoxFit.cover),),
      child: Stack (
        children: [
          Container(
            child: Container(
              alignment: Alignment(0,- 0.59),
              padding: EdgeInsets.fromLTRB(30.0, 135.0, 30.0, 0.0),
              child: Column(
                children: [
                  Container(
                  child: Text('wellcome to',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19, letterSpacing: 1.0,
                        fontFamily: 'PlayfairDisplay'),
                  ),
                ),
                  Container(
                    child: Text('WellBeing',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30, letterSpacing: 1.0,
                          fontFamily: 'PlayfairDisplay'),
                    ),
                  ),
                ] ,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.66),
            child: ElevatedButton(onPressed: () {

                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[100],
                  animationDuration: const Duration(milliseconds: 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                    child: Text('Get Started' , textAlign: TextAlign.center,))

          ),
        ],
      ),
    );

  }
}
