import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget{
  //Try using named arguments instead of positional arg??
  //Using positional arguments...
  //AnsButton(this.ansText,this.pressed, {super.key});

  //Using Named Argument...
  const AnsButton({super.key, required this.onPressed, required this.ansText});

  final String ansText;
  final void Function() onPressed;
  @override
  Widget build(context) {
    return Container(
      width: 352,
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
          child: ElevatedButton(
            onPressed:onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              // the shape widget is to shape the elevated button in a certain way.
              // shape:RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(8),
              // ),
            ),
            child: Text(ansText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight:FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
    );
  }
}