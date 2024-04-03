import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 190, 45, 215),
           Color.fromARGB(255, 114, 255, 187)),
      ),
    ),
  );
}
