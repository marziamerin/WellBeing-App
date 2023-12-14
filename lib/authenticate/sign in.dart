import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellbeing_app/authenticate/sign up.dart';
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                  height: 30.0,
                ),
                SizedBox(
                  height: 18.0,
                ) ,
                TextFormField(
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
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 18.0,
                ) ,
                TextFormField(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Don't have an account?",
                     style: TextStyle(
                       fontSize: 18,
                     ),),
                    SizedBox( width: 5,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
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
    );
  }
}

