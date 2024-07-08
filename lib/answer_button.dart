import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer_Button extends StatelessWidget{
  Answer_Button(this.answerText,this.onTap,{super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         // SizedBox(height: 20,),
          ElevatedButton(onPressed: onTap,
               style: ElevatedButton.styleFrom(
                 padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                backgroundColor: Colors.lightGreenAccent,
                foregroundColor: Colors.black,
               // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              ), child: Text(answerText,textAlign: TextAlign.center,),
      
          ),
        ],
      ),
    );


  }
}