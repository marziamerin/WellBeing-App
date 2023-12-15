import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          margin: EdgeInsets.all( 40),
          child: ElevatedButton(onPressed: () {
          },
            child: Text('Log Out',
              style: TextStyle(
                color: Colors.black ,fontSize: 25 ,
                fontWeight: FontWeight.bold,
              ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: const Size(200, 50) ,
              animationDuration: const Duration(milliseconds: 1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),),
        )
    );
  }
}
