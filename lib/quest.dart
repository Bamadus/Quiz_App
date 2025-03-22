import 'package:flutter/material.dart';
import 'package:untitled/ans_buttons.dart';


class Quest extends StatefulWidget{
  const Quest({super.key});

  @override
  State<Quest> createState() {
    return _QuestState();
  }
}

String questions = "Questions!!";
class _QuestState extends State<Quest> {

  @override
  Widget build(content) {
    return SizedBox(
      width: double.infinity,
        //Wrapping the whole code in a sizedBox is to use a special dart widget
        // to make the code take up or use as much space the screen as to provide...
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // this is to center the widgets on the screen
          children: [
          const Text(
              "The questions...",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 29,),
      //ansText and pressed are named arguments in the ans_buttons module
          AnsButton(
            ansText: "1",
            pressed: (){},
          ),
            AnsButton(
              ansText: "2",
              pressed: (){},
            ),
            AnsButton(
              ansText: "3",
              pressed: (){},
            ),
            AnsButton(
              ansText: "4",
              pressed: (){},
            )
        ],
        )
    );
  }
}