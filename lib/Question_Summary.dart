import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class question_summary extends StatelessWidget {
  const question_summary(this.summaryData,{super.key});

  final List<Map<String,Object>>summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:300,
      child: SingleChildScrollView(
        child: Column(children: summaryData.map((data){
          return Row(children: [
          // type custing
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(children: [
                Text(data['Question']as String),
                SizedBox(height: 5,),
                Text(data['User_answer']as String),
                  Text(data['Corrrect_Answer']as String),
        
        
                ],),
            ),
        
          ],);
          }).toList(),
          ),
      ),
    );

  }
}
