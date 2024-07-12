import 'package:flutter/cupertino.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_Screen.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
//***** Another Screen shif code with initstate Fucntion ****
  // Widget? activeScreen;

  // ? This is mean active screen initial is null and we can use for update

  //   @override
  // void initState() {
  //     activeScreen =  Start_Screen(switchScreen);
  //   super.initState();
  // }

  //***** Another Screen shift code with Terneary Operator
  var activeScreen = 'Start_Screen';
   List<String> selectedAnswer = [];
  void switchScreen() {
    setState(() {
      activeScreen = 'Question_Screen';
    });
  }
  void chooseAnswer(String answer)
  {
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length )
      {
        setState(() {
          selectedAnswer= [];
          activeScreen = 'result_scrren';

        });
      }
  }
  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'Start_Screen'
    //     ? Start_Screen(switchScreen)
    //     : const QuestionScreen();

    // other type to decelear this statement
    Widget screenWidget = Start_Screen(switchScreen);
    if(activeScreen == 'Question_Screen')
      {
        screenWidget =  QuestionScreen(onSelectAnswer: chooseAnswer,);
      }
    if(activeScreen == 'result_scrren')
      {
        screenWidget = const result_scrren();
      }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 205, 253),
              Color.fromARGB(255, 156, 0, 208)
            ],
            begin: Alignment.topCenter,
            end: Alignment.topLeft,
          )),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
