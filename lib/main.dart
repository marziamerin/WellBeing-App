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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Hi Merin'),
          ElevatedButton(onPressed: () {
            print('you clicked me');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent ,
            ),
              child: Text('Click'),
           ),
          Container(
            child: Text('Submit'),
            padding: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              color: Colors.green[200],
            ),
          )
        ],
      ),
      );
  }
}


