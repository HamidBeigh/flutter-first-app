import 'dart:math';
import 'package:flutter/material.dart';

final randomazer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRole = 2;

  void roleDice() {
    setState(() {
      currentDiceRole = randomazer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRole.png',
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: roleDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Role Dice'))
      ],
    );
  }
}
