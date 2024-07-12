import 'package:flutter/material.dart';
class result_scrren extends StatelessWidget {
  const result_scrren({super.key});

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
          Text("List of answer and  question"),
          SizedBox(height: 30,),
          TextButton(onPressed: (){}, child: Text('Restart Quiz !')),
    ],
      ),
       ),
      );
  }
}
