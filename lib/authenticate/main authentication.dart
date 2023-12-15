import 'package:flutter/material.dart';
import 'package:wellbeing_app/authenticate/sign%20in.dart';
import 'package:wellbeing_app/authenticate/sign up.dart';

class MainAuthentication extends StatefulWidget {
  const MainAuthentication({super.key});

  @override
  State<MainAuthentication> createState() => _MainAuthenticationState();
}

class _MainAuthenticationState extends State<MainAuthentication> {
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
    }
  }
}
