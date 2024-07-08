import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  State<QuestionScreen> createState() {
    return _questionScreenState();
  }
}

class _questionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex =0;
  void answerQuestion(String seletedAnswer)
  {
    widget.onSelectAnswer(seletedAnswer);
    // Must be use setsate function to checnge the value
    setState(() {
      currentQuestionIndex = currentQuestionIndex +1;
    });
  }


  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

             Text(currentQuestion.text, style: GoogleFonts.lato(
          color:Colors.white,
          fontSize:24,
               fontWeight: FontWeight.bold,
        ),
             textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
           // here we can use ... for create a list itarble

            ...currentQuestion.getshuffleAnswer().map((answer){
              return Answer_Button(answer,()
              {
                answerQuestion(answer);
              });
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