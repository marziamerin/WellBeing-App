import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellbeing_app/authenticate/sign%20up.dart';
import 'package:wellbeing_app/home/home.dart';
import 'package:wellbeing_app/services/auth.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  String email ='';
  String password ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30.0),
        color: Colors.white ,
        child: Form(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset('assets/sign in.jpg',
                    height: 90.0,) ,
                ),
                Text('Sign In',
                  textAlign: TextAlign.center,
                   style: TextStyle(
                     decorationColor: Colors.black,
                     fontSize: 30.0 ,
                     fontWeight: FontWeight.bold ,
                     letterSpacing: 1.0,
                     fontFamily: 'PlayfairDisplay' ,
                   ),),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 20.0,
                ) ,
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '  Email',
                    fillColor: Colors.white70 ,
                  ),
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 20.0,
                ) ,
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(onPressed: () async {
                  print(email);
                  print(password);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                  child: Text('Log In',
                    style: TextStyle(
                    color: Colors.white ,fontSize: 25 ,
                      fontWeight: FontWeight.bold,
                  ),),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[400],
                    fixedSize: const Size(200, 50) ,
                    animationDuration: const Duration(milliseconds: 1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),) ,
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 40.0,
                  child: Text("Don't have an account?"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

