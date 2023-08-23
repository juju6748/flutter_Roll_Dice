import 'package:flutter/material.dart';

import 'dart:math'; //math for random number of dice.

class DiceRoller extends StatefulWidget {
  //'StatefulWidget' will manage state that change data overtime.
  const DiceRoller(
      {super.key}); //constructer function. We can add const because  even though there StatefullWidget because class are divided

  @override
  State<DiceRoller> createState() {
    //insted 'build', 'createState' used for StatefulWidget
    return _DiceRollerState(); //must return state value
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // '_' means private class

  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      //re-execute the build function
      currentDiceRoll = Random().nextInt(6) + 1; // random dice 1 to 6
    }); //State based classes
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        //display the image
        'assets/images/dice-$currentDiceRoll.png', //'$' for inject of String value
        width: 200,
      ),
      const SizedBox(height: 20), //button for roll the dice.
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.red,
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        ),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
