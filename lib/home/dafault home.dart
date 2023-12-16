import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class DefaultHome extends StatelessWidget {
  const DefaultHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        margin: EdgeInsets.fromLTRB(40.0, 70.0, 40.0, 50.0),
        child: Stack(
          children: [
            SizedBox(
              height: 50.0,
              child: Text('Hey there! Listen ,',
              style: TextStyle(
                fontSize: 20 ,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              height: 80.0,
            ),

          ],

          ),
        ),
      );
  }
}
