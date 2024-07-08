import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Start_Screen extends StatelessWidget {
  const Start_Screen( this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
              child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
                color: Color.fromARGB(255, 255, 255, 255),
          )),

          // child: Opacity(opacity: .8, child: Image.asset('assets/images/quiz-logo.png',     width: 200,),   )),

          const SizedBox(
            height: 25,
          ),
          Text(
            "Best Quiz App in the world",
            style: GoogleFonts.poppins(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),

          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
            foregroundColor:Colors.black,
            backgroundColor: Colors.red,
          ),
              icon: Icon(Icons.arrow_right_alt),
              label: Text("Start Quiz")),
        ],
      ),
    );
  }
}
