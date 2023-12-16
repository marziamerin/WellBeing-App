import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
        body:Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(onPressed: () => FirebaseAuth.instance.signOut(),
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
              ),
            ],
          ),
        )
    );
  }
}
