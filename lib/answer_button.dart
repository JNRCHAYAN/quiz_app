import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer_Button extends StatelessWidget{
  Answer_Button(this.answerText,this.onTap,{super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: onTap,
         style: ElevatedButton.styleFrom(
           padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          backgroundColor: Colors.lightGreenAccent,
          foregroundColor: Colors.black,
         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

        ),
        child: Text(answerText),
    );
  }
}