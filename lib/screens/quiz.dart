import 'package:flutter/material.dart';
import '../screens/question_screen.dart';

import '../gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen ='start-screen';

  /*Widget? activeScreen ;

  @override
  void initState() {
    activeScreen = GradientContainer(switchScreen);

    super.initState();
  }
*/
  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = GradientContainer(switchScreen);

    if(activeScreen == 'question-screen'){
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:   Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 20, 155),

        body: screenWidget,



      ),




    );
  }
}
