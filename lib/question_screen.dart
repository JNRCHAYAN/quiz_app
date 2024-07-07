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
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

             Text(currentQuestion.text, style: TextStyle(
              color: Colors.white,
               fontSize: 20,

            ),
               textAlign: TextAlign.center,
             ),
            const SizedBox(height: 30,),
           // here we can use ... for create a list itarble

            ...currentQuestion.getshuffleAnswer().map((answer){
              return Answer_Button(answer,(){});
            }),

            // ...currentQuestion.answer.map((answer){
           //    return Answer_Button(answer,(){});
           //  }),

            // Answer_Button(currentQuestion.answer[0], (){}),
            // const SizedBox(height: 30,),
            // Answer_Button(currentQuestion.answer[1],(){}),
            // const SizedBox(height: 30,),
            // Answer_Button(currentQuestion.answer[2],(){}),
            // const SizedBox(height: 30,),
            // Answer_Button(currentQuestion.answer[3],(){}),
          ],),
      ),
    );
  }
}