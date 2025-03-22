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
          backgroundColor: Colors.purple
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