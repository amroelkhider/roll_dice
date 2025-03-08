import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/dice_roller.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(this.widget, {super.key, required this.colors});

  final List<Color> colors;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
