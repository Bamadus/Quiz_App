import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget{
  //Try using named arguments instead of positional arg??
  //Using positional arguments...
  //AnsButton(this.ansText,this.pressed, {super.key});

  //Using Named Argument...
  const AnsButton({super.key, required this.pressed, required this.ansText});

  final String ansText;
  final void Function() pressed;
  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed:pressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
              vertical: 9, horizontal: 19
          ),
          backgroundColor: Colors.purple,
          // the shape widget is to shape the elevated button in a certain way.
          // shape:RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(8),
          // ),
        ),
        child: Text(ansText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
    );
  }
}