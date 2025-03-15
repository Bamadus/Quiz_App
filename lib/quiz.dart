import 'package:flutter/material.dart';
import 'package:untitled/background.dart';
import 'package:untitled/quest.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{

  Widget activeScreen= Background(switchScreen);

  void switchScreen(){
    setState(() {
      activeScreen = const Quest();
    });
  }
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.white,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.purpleAccent
                ],
                begin:Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: activeScreen,
          )
      ),
    );
  }
}