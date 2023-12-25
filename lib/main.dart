import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wellbeing_app/pages/introductionary_pages.dart';
import 'package:firebase_core/firebase_core.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(
        apiKey: "AIzaSyBTCbrFDB-RAyUyrL49pQT2n1b9RIywWys",
        appId:  "1:326607815198:web:09bf5b0201c1b1664e640f",
        messagingSenderId: "326607815198",
        projectId: "wellbeing-for-mental-hea-98c89"));
  }
  await Firebase.initializeApp();
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






