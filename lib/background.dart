import 'package:flutter/material.dart';

class Background extends StatefulWidget{
  const Background(void Function() startQuiz,{super.key});

  @override
  State<Background> createState(){
    return _backGroundState();
  }

}
void button()=> "The button works";
class _backGroundState extends State<Background>{
  @override
  Widget build(context) {
        return Center(
          child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               Opacity(
                 opacity: 0.7,
                 child: Image.asset(
                   'assets/images/dice1.png',
                   width:199,
                   color: Colors.white60,
                 ),
               ),
                const SizedBox(height:3),
                 const Text(
                  'Learn flutter the fun way!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
                const SizedBox(height:9),
                 OutlinedButton.icon(
                    onPressed: button,      //we can pass an anonymous function to the "onpressed" argument...like this (){}
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                   //when you want to add an icon to a button like this button..
                     // you would need to change the child clss to label and us the in-built constructor function " icon"
                     // which can be used any where ...
                   icon: const Icon(Icons.add),
                    label:const Text(
                        "Start Quiz?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )
                    )
                )
              ],
            )
        );
  }


}