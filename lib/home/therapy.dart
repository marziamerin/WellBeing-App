import 'package:flutter/material.dart';

class Therapy extends StatefulWidget {
  const Therapy({super.key});

  @override
  State<Therapy> createState() => _TherapyState();
}

class _TherapyState extends State<Therapy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple ,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 70, 40, 40),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                child: Text('Help us match you with the right therapy !',
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay' , fontSize: 16 , fontWeight: FontWeight.bold ,
                    color: Colors.white ,
                  ) ,),
              ),
              SizedBox(
                height: 30
              ),
              SizedBox(
                height: 450, width: 300,
                  child: Card(
                      elevation: 12,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 30.0)),
                          ],
                        ),
                      ))
              ),
        
        
            ],
          ),
        
        ),
      ),
    );
  }
}
