import 'package:flutter/material.dart';
import 'package:wellbeing_app/authenticate/sign%20in.dart';
import 'package:wellbeing_app/home/home.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username ='';
  String password ='';
  String email ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          child: Container(
            margin: EdgeInsets.all(30.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up',
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
                    height: 14.0,
                  ) ,
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: '  Username',
                        fillColor: Colors.black12 ,
                        filled: true ,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.indigo, width: 2.0),
                        )
                    ),
                    onChanged: (val) {
                      setState(() => username = val);
                    },
                  ),
                  SizedBox(
                    height: 18.0),
                  SizedBox(
                    height: 14.0,
                  ) ,
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: ' Email',
                        fillColor: Colors.black12 ,
                        filled: true ,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.indigo, width: 2.0),
                        )
                    ),
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
                    height: 14.0,
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
                        borderSide: BorderSide(color: Colors.indigo, width: 2.0),
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
                    print(username);
                    print(password);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                    child: Text('Sign Up',
                      style: TextStyle(
                        color: Colors.white ,fontSize: 25 ,
                        fontWeight: FontWeight.bold,
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[500],
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
                      Text("Already have an account?",
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                      SizedBox( width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                        },
                        child: Text('Log In',
                          style: TextStyle(
                            color: Colors.indigo[500],
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
