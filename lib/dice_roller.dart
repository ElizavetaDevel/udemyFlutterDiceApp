import 'package:dice_app/gradient_container.dart';
import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  static const colors = [Colors.black26, Colors.cyan];

  var currentDiceRoll = 1;

  rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 48),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16),
                      backgroundColor: Color.fromARGB(255, 6, 39, 43)),
                  child: const StyledText('Roll dice'),
                )
              ],
            ),
          ),
          colors),
    );
  }
}
