import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController _emailController = TextEditingController();
  @override
  void dispose (){
    _emailController.dispose();
    super.dispose();
  }
  Future passwordReset() async{
    try {
    await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim());
    showDialog(context: context, builder: (context){
      return AlertDialog(content: Text('Reset Password linkn sent. Check your email.'));
    },);}
        on FirebaseAuthException catch (e) {
      print (e);
      showDialog(context: context, builder: (context){
        return AlertDialog(content: Text(e.message.toString()),);
      },);
        } }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter your email, we're gonna send you a reset link.",
            style: TextStyle(
              fontSize: 20
            ),),
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
            ElevatedButton(onPressed: () {},
              child: Text('Reset Password',
                style: TextStyle(
                  color: Colors.white ,fontSize: 20 ,
                  fontWeight: FontWeight.bold,
                ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[400],
                fixedSize: const Size(250, 50) ,
                animationDuration: const Duration(milliseconds: 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),) ,
          ],
        ),
      ),
    );
  }
}
