import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({Key? key , required this.option , required this.color}): super(key: key);
  final String option;

final Color color ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: (){
          print('selected');
        },
        child: Card(
          color: color,
          shadowColor: Colors.black38,
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
