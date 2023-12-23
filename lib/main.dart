import 'package:flutter/material.dart';
import 'package:wellbeing_app/pages/introductionary_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDz_AbqqlxjXQcjWbLeUHvXB4brbPfDLNk",
      appId: "1:326607815198:android:f27ced8d1de37c0d4e640f",
      messagingSenderId: "326607815198",
      projectId: "wellbeing-for-mental-hea-98c89",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Introductionary(),


    );
  }
}






