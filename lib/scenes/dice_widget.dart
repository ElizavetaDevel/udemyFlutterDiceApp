import 'package:flutter/material.dart';
import 'package:dice_app/base_ui/gradient_container.dart';
import 'package:dice_app/base_ui/styled_text.dart';

class DiceWidget extends StatelessWidget {
  static const colors = [Colors.black26, Colors.cyan];

  const DiceWidget(this.currentDiceRoll, this.onPressed, {super.key});

  final int currentDiceRoll;
  final VoidCallback onPressed;

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
                  onPressed: onPressed,
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
