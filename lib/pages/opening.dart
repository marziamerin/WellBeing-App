import 'package:flutter/material.dart';

class Opening extends StatelessWidget {
  const Opening({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/flower-unsplash.jpg'),
            fit: BoxFit.cover),),
      child: Column(


      ),
    );
  }
}
