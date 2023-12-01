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
        child: IconButton(
          onPressed: () {
            print ('You clicked me');
          },
          icon: Icon(Icons.facebook),
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


