import 'package:first_app/dice_roller.dart';

import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;

  final Color color2;

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.yellow;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(), //folder for for DiceRoller
      ),
    );
  }
}

//class GradientContainer extends StatelessWidget {
  //const GradientContainer(this.colors, {super.key});

 // final List<Color> colors;

 // @override
 // Widget build(context) {
 //   return Container(
 //     decoration: BoxDecoration(
 //       gradient: LinearGradient(
 //         colors: [
 //           Color.fromARGB(240, 209, 20, 20),
//            Color.fromARGB(255, 143, 104, 104),
  //        ],
    //      begin: startAlignment,
     //     end: endAlignment,
       // ),
//      ),
 //     child: const Center(
//        child: StyledText('Hello World!'),
//      ),
//    );
//  }
//}