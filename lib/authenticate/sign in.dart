import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellbeing_app/wrapper.dart';
import 'package:wellbeing_app/services/auth.dart';

import 'Forgot password.dart';

class SignIn extends StatefulWidget {
  final VoidCallback showSignUp;
  const SignIn({Key? key, required this.showSignUp}): super (key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuthService _auth = FirebaseAuthService();
 TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim() ,
      password: _passwordController.text.trim()
    );
  }
  @override
  void dispose (){
    _emailController.dispose();
    _passwordController.dispose();
      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30.0),
        color: Colors.white ,
        child: Form(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('assets/sign in.jpg',
                      height: 250.0,) ,
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
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 18.0,
                  ) ,
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: '  Email',
                      fillColor: Colors.black12 ,
                      filled: true ,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.black12, width: 2.0),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 18.0,
                  ) ,
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: '  Password',
                      fillColor: Colors.black12 ,
                      filled: true ,
                       enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 2.0),
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: Colors.deepPurple, width: 2.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: (){
        Navigator.push(context, MaterialPageRoute(
        builder: (context) =>Forgot()));
                         },
                          child: Text('Forgot Password',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(onPressed: () async { signIn ();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Wrapper()));
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Don't have an account?",
                       style: TextStyle(
                         fontSize: 18,
                       ),),
                      SizedBox( width: 5,),
                      GestureDetector(
                        onTap: widget.showSignUp,
                        child: Text('Sign Up',
                        style: TextStyle(
                          color: Colors.deepPurple[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      )

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

