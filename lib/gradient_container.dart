import 'package:flutter/material.dart';
import '../screens/homepage.dart';

//cambiare posizione dei gradienti
const startAlignment = Alignment.centerLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2,
  // this.startQuiz,
  {
    super.key,
  });

  //final void Function () startQuiz;

  //costruttore alternativo
  const GradientContainer.purpleTwo({super.key})
      : color1 = Colors.white,
        color2 = Colors.black;

  //scegli colore
  //final List<Colors> colors;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          //image: DecorationImage()
          gradient: LinearGradient(
        begin: startAlignment,
        end: endAlignment,
        colors: [color1, color2],
      )),
      child: Column(
        mainAxisSize: MainAxisSize.min,

          children: [

        const HomePage(),
        Image.asset(
            'assets/images/quiz_img.png',
            width: 200,
            height: 200,
            //color: const Color.fromARGB(250, 255, 255, 255),

       ),


        // Opacity( //utilizza molte risorse , sarebbe da evitare per app molto grosse
        //   opacity: 0.6,
        //   child: Image.asset(
        //     'assets/images/quiz_img.png',
        //     width: 200,
        //     height: 200,
        //
        //     //colorBlendMode: BlendMode.modulate,
        //   ),
        // ),
        //aggiunta di icon in outlinedbutton quindi child diventa label
        OutlinedButton.icon(

          onPressed: (){

          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),

          label: Text('Inizio'),
          icon: Icon(Icons.start),
        )
      ]),

    );
    /*  decoration:  BoxDecoration(
        //image: DecorationImage()
          gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [color1,color2],
          )),

        child:
    );
*/
  }
}
