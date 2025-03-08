import 'package:flutter/material.dart';
import 'package:untitled/background.dart';


const startColorStyleAlignment = Alignment.topCenter;
const endColorStyleAlignment = Alignment.bottomCenter;

void main() {
  runApp(
     MaterialApp(
        home: Scaffold(
          //backgroundColor: Colors.white,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.purpleAccent
                  ],
                begin:startColorStyleAlignment,
                end: endColorStyleAlignment,
              ),
            ),
              child: const Background(),
          )
        ),
    ),
  );
}

