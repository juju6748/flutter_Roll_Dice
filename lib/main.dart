import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      //'const' can optimize performance
      //MaterialApp's build() is executed
      home: Scaffold(
        //Scaffold's build() method is executed
        body: GradientContainer(
          //GradientContainer's build() method is executed
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 115, 111, 128),
        ),
      ),
    ),
  );
}
