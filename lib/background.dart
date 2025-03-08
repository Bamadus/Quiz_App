import 'package:flutter/material.dart';

class Background extends StatefulWidget{
  const Background({super.key});

  @override
  State<Background> createState(){
    return _backgroundState();
  }

}
void button()=> "The button works";
class _backgroundState extends State<Background>{
  @override
  Widget build(context) {
        return Center(
          child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice3.png',
                  width:199,
                ),
                const SizedBox(height: 19),
                const OutlinedButton(
                    onPressed: button,
                    child:
                    Text("Press Me!!")
                )
              ],
            )
        );
  }


}