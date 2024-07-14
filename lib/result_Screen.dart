import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/Question_Summary.dart';
class result_scrren extends StatelessWidget {
  const result_scrren({super.key, required this.chosenAnswer});
  final List<String> chosenAnswer;
  List<Map<String,Object>> getSummarydata()
  {
    final  List<Map<String,Object>>summary =[];
    for(var i =0;i< chosenAnswer.length;i++)
      {
        summary.add({
          'question_index': i,
          'Question' : questions[i].text,
          'Corrrect_Answer':questions[i].answer[0],
          'User_answer':chosenAnswer[i]
        });
      }
    return summary;
  }
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
          width: double.infinity,
          child: Container(
          margin: EdgeInsets.all(20),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You answer X out of Y Question Correctly"),
          SizedBox(height: 30,),
          question_summary(getSummarydata()),
          SizedBox(height: 30,),
          TextButton(onPressed: (){}, child: Text('Restart Quiz !')),
    ],
      ),
       ),
      );
  }
}
