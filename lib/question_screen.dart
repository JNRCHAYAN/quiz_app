import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  State<QuestionScreen> createState() {
    return _questionScreenState();
  }
}

class _questionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(currentQuestion.text, style: TextStyle(
            color: Colors.white,
          ),),
          const SizedBox(height: 30,),
          Answer_Button(currentQuestion.answer[0], (){}),
          const SizedBox(height: 30,),
          Answer_Button(currentQuestion.answer[1],(){}),
          const SizedBox(height: 30,),
          Answer_Button(currentQuestion.answer[2],(){}),
          const SizedBox(height: 30,),
          Answer_Button(currentQuestion.answer[3],(){}),
        ],),
    );
  }
}