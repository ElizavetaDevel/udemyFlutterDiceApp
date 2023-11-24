import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dice_app/scenes/dice_widget.dart';

final randomizer = Random();

class DiceController extends StatefulWidget {
  const DiceController({
    super.key,
  });

  @override
  State<DiceController> createState() => _DiceControllerState();
}

class _DiceControllerState extends State<DiceController> {
  var currentDiceRoll = 1;

  rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DiceWidget(currentDiceRoll, rollDice);
  }
}
