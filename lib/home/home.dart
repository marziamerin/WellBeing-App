import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:wellbeing_app/home/dafault%20home.dart';
import 'package:wellbeing_app/home/mood tracker.dart';
import 'package:wellbeing_app/home/profile.dart';
import 'package:wellbeing_app/home/therapy.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index =1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        animationDuration: Duration(milliseconds: 250),
        items: [
          Icon(Icons.home , size: 30),
          Icon(Icons.psychology_alt ,size: 30),
          Icon(Icons.diversity_1 , size: 30),
          Icon(Icons.account_circle_rounded , size: 30)
        ],
        index : index,
        onTap: (selectedIndex){
          setState(() {
            index = selectedIndex ;
          });
        },
      ),
      body: Container(
        child: getSelectedWidget(index: index)
      ),
    );
  }
  Widget getSelectedWidget({required int index})
  {
    Widget widget ;
    switch(index){
       case 1 :
         widget = const MoodTracker();
       break;
        case 2 :
          widget = const TherapyPage();
        break;
         case 3 :
           widget = const ProfilePage();
         break;
          default :
            widget = const DefaultHome();
          break;
    }
    return widget;
    }
  }