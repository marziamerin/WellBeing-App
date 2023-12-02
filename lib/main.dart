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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('HI Merin'),
          ElevatedButton(onPressed: () {
            print('Tap');
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple[200],
            ),
              child: Text('Tap Me'),
          ),
          Container(
            child: Text('This is nice'),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          )

        ],
      ) ,
      );
  }
}


