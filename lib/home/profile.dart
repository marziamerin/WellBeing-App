import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print("Error during sign out: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.png'),// Add your image asset path
              ),
              SizedBox(height: 20),
              Text(
                'User',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Patient',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'I believe in the power of positive thinking and self-care. Let\'s break the stigma!',
                textAlign: TextAlign.start,
                style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Edit Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),),
                leading: Icon(Icons.edit_outlined ,
                color: Colors.white),
                onTap: () {
                  // Navigate to the edit profile page
                  // You can use Navigator.push for navigation
                },
              ),
              ListTile(
                title: Text('Notification Settings',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),),
                leading: Icon(Icons.notifications_on_outlined ,
                  color: Colors.white ,),
                onTap: () {
                  // Navigate to the notification settings page
                },
              ),
              SizedBox( height: 10),
              Container(
                child: ElevatedButton(
                  onPressed: _signOut,
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(150, 40),
                    animationDuration: const Duration(milliseconds: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

