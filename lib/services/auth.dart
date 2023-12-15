import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellbeing_app/authenticate/sign%20in.dart';
import 'package:wellbeing_app/authenticate/sign up.dart';


class AuthService extends StatefulWidget {
  const AuthService({super.key});

  @override
  State<AuthService> createState() => _AuthServiceState();
}

class _AuthServiceState extends State<AuthService> {
  bool showSignIn =true ;
  void toggleScreens(){
    setState(() {
      showSignIn =!showSignIn ;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(showSignUp: toggleScreens);
    }
    else {
      return SignUp( showSignIn: toggleScreens );
    };
  }
}
