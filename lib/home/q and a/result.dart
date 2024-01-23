import 'package:flutter/material.dart';


class ResultBox extends StatelessWidget {
  const ResultBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white ,
      content: Container(
        height: 500, width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ) ,
              SizedBox(
                child: Text('You are suffering from \n Mental Disorders.',
                  textAlign: TextAlign.center ,
                  style: TextStyle(
                  color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'PlayfairDisplay'
                  ),),
              ),
              SizedBox( height: 10,),
              SizedBox(
                child: Image.asset('assets/depressed.jpg' ,
                  colorBlendMode: BlendMode.plus ,
                  height: 250, width: 200,),
              )
            ],
          ),
        ),
    );
  }
}
