import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: const [
          Color.fromARGB(121, 3, 2, 34),
          Color.fromARGB(121, 112, 56, 176)
        ],
      ),
    ),
  ));
}
