import 'package:flutter/material.dart';
import 'package:quiz_app_guide_course/models/answer_button.dart';
import 'package:quiz_app_guide_course/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];



    return SizedBox(

      width: double.infinity, //max larghezza possibile
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children:  [
           Text(
              currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(

            height: 30,
            width: 15,

          ),
//1
          AnswerButton(answerText: currentQuestion.answers[0], onTap: (){

          },
          ),
//2
          AnswerButton(answerText: currentQuestion.answers[1] , onTap: (){

          },
          ),
//3
          AnswerButton(answerText: currentQuestion.answers[2], onTap: (){

          },
          ),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: (){

          },
          ),


        ],
      ),
    );
  }
}
