import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/dice_roller.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(this.widget, {super.key, required this.colors});

  final List<Color> colors;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
