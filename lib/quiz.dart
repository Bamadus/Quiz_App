import 'package:flutter/material.dart';
import 'package:untitled/startScreen.dart';
import 'package:untitled/quest.dart';
import 'package:untitled/Data/questions.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{

  // Widget? activeScreen;
  //
  // @override
  // void initState() {
  //   activeScreen= Background(switchScreen);
  //   super.initState();
  // }
  List<String> selectedAns =[];

  var activeScreen = "startScreen";
  void switchScreen(){
    setState(() {
      activeScreen = "Quest";
    });
  }

  void chosenAns(String ans){
    selectedAns.add(ans);

    if(selectedAns.length == questions.length){
      setState(() {
        //selectedAns = [];
        activeScreen= 'startScreen';
      });
    }
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
            child: activeScreen == 'startScreen'
                ? Background(switchScreen)
                : Quest(onChosenAns:chosenAns),
            //we could has well pass all the tenary operation
            // manipulations to a variable and just pass the variable to child

          )
      ),
    );
  }
}