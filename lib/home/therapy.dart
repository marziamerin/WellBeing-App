import 'package:flutter/material.dart';
import 'package:wellbeing_app/home/q%20and%20a/constant.dart';
import 'package:wellbeing_app/home/q%20and%20a/nextbutton.dart';
import 'package:wellbeing_app/home/q%20and%20a/question_model.dart';
import 'package:wellbeing_app/home/q%20and%20a/therapy_questions.dart';
import 'package:wellbeing_app/home/q and a/optionscard.dart';

class Therapy extends StatefulWidget {
  const Therapy({super.key});

  @override
  State<Therapy> createState() => _TherapyState();
}

class _TherapyState extends State<Therapy> {
  List<Question> _questions = [
    Question(
        title: 'Have you been experiencing anxiety or stress lately?',
        options: {'Yes': true , 'No': false}, id:'1') ,
    Question(
        title: 'Over the past weeks,have you experienced \nfeeling down, depressed or hopeless?',
        options: {'Not that much': false , 'Nearly everyday': true}, id: '2') ,
    Question(
        title: 'What made you think of therapy?',
        options: {'Feeling emense sadness': true ,
                   'Having panic attacks': true ,
                     'Lost of appetite' : true,
                       'Having a hard time sleeping': true }, id: '3') ,
  ];

  int index =0;
 bool isPressed = false ;


  void nextQuestion(){
    if (index == _questions.length -1){
      return;
    }
    else{if (isPressed){
      setState(() {
      index++ ;
      isPressed =false;
    });
  }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please select an option'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(vertical: 20.0),
      ));}
    }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple ,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 70, 40, 40),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                child: Text('Help us match you with the right Therapy!',
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay' , fontSize: 15 , fontWeight: FontWeight.bold ,
                    color: Colors.white ,
                  ) ,),
              ),
              SizedBox(
                height: 30
              ),
              SizedBox(
                height: 480, width: 300,
                  child: Card(
                      elevation: 12,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Container(
                            padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 30.0),
                          child: Column(
                            children: [
                               TherapyQuestion(
                                   question: _questions[index].title,
                                   indexAction: index,
                                   totalQuestions: _questions.length),
                              const Divider(color: Colors.white,) ,
                              SizedBox(
                                height: 20,
                              ),
                              for (int i = 0; i< _questions[index].options.length; i++)
                                OptionsCard(option: _questions[index].options.keys.toList()[i],
                                color: isPressed? _questions[index].options.values.toList()[i]
                                    == true?
                                correct
                                    : incorrect : neutral,
                                ),

                              SizedBox( height: 15,),
                              ElevatedButton(
                                    onPressed: () {} ,
                                child: NextButton(
                                  nextQuestion: nextQuestion,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ))
              ),


            ],
          ),

        ),
      ),
    );
  }
}
