import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  ),
);


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Welcome To WellBeing'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[200] ,
      ),
      body: Center(
        child: ElevatedButton (
          onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple, // Background color
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(fontSize: 25),
            ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('+'),
          backgroundColor: Colors.blueAccent[400]
        ),
    );
  }
}


