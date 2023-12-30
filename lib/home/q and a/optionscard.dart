import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({Key? key , required this.option}): super(key: key);
  final String option;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: (){},
        child: Card(

          child: ListTile(
            title: Text(
              option,
              textAlign: TextAlign.center,
              style: TextStyle( color: Colors.black,
              fontSize: 15 , letterSpacing: 1, fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
            ),
            ),
          ),
        ),
      ),
    );
  }
}
