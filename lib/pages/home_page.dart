import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/app_container.dart';
import 'package:roll_dice/widgets/dice_roller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: AppContainer(
        DiceRoller(),
        colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 36, 4, 80),
        ],
      ),
    );
  }
}
