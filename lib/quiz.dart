import 'package:flutter/cupertino.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget
{
  const Quiz({super.key});
  State<Quiz> createState(){
    return _QuizState();
  }

}
class _QuizState extends State<Quiz>
{
  Widget? activeScreen;  // ? This is mean active screen initial is null and we can use for update
  // intisate class to switch screen on my app


    @override
  void initState() {
      activeScreen =  Start_Screen(switchScreen);
    super.initState();
  }
 void switchScreen()
  {
    setState(() {
      activeScreen = QuestionScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration:const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 0, 205, 253),
                    Color.fromARGB(255, 156, 0, 208)],
                  begin: Alignment.topCenter,
                  end: Alignment.topLeft,
                )
            ),
            child: activeScreen,
        ),
      ),
    );
  }
}