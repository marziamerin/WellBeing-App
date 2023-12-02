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
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                  child: Text('One',textAlign: TextAlign.center, style: TextStyle(
                      fontSize: 20 ),),
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                  ),
                ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text('Two', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 20 ),),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple[200],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text('Three',textAlign: TextAlign.center, style: TextStyle(
                fontSize: 20 ),),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
            ),
          ) ,
        ],
      ) ,

    ) ;
  }
}


