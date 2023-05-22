import 'package:flutter/material.dart';
import 'package:quiz_app_guide_course/text_random.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,

        padding: const EdgeInsets.all(15),
        child: const TextRandom(),


    );
  }
}


