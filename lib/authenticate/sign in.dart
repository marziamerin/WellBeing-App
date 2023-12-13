import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 30.0),
        color: Colors.white ,
        child: Form(
          child: SafeArea(
            child: Column(
              children: [
                Text('Sign In',
                  textAlign: TextAlign.center,
                   style: TextStyle(
                     decorationColor: Colors.black,
                     fontSize: 30.0 ,
                     fontWeight: FontWeight.bold ,
                     letterSpacing: 1.0,
                     fontFamily: 'PlayfairDisplay' ,
                   ),),SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ) ,
                TextFormField(
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 20.0,
                ) ,
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {},
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Log In'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

