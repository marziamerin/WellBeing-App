import 'package:flutter/material.dart';
import 'package:wellbeing_app/pages/introductionary_pages.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp() ;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Introductionary(),

    );
  }
}




