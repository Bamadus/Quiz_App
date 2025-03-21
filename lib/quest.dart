import 'package:flutter/material.dart';



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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text("The questions..."),
          const SizedBox(height: 29,),
          ElevatedButton(onPressed:
              (){},
              child:const Text("answer 1")
          ),
          ElevatedButton(onPressed:
              (){},
              child:const Text("answer 2")
          ),
          ElevatedButton(onPressed:
              (){},
              child:const Text("answer 3")
          ),
          ElevatedButton(onPressed:
              (){},
              child:const Text("answer 4")
          )
        ],
        )
    );
  }
}