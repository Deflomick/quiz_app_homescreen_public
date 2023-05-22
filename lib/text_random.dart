import 'package:flutter/material.dart';
import 'dart:math';


class TextRandom extends StatefulWidget{
  const TextRandom({super.key});


  @override
  State<TextRandom> createState() => _TextRandomState();
}

class _TextRandomState extends State<TextRandom> {
  final String _text = 'Quiz'; //scegli cosa scrivere
  @override
  Widget build(context) {
    Color _color = Colors.green;
    setState(() {

      // generate random numbver
      final random = Random();

      // generate random color
      _color= Color.fromARGB(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);

    });

    //quadrato a caso del text
    return Container(
      alignment: Alignment.center,

      child: Text(

          _text,
          style: TextStyle(
          color: _color,
          fontSize: 50,
          fontStyle: FontStyle.italic,
          letterSpacing: 15,
           // background: Paint(),

      ),


      ),
    );
  }
}