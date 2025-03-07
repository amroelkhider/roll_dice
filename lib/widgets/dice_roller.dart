import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  String activeDice = '';

  String _getDice({int num = 1}) {
    return 'assets/images/dice-$num.png';
  }

  @override
  void initState() {
    super.initState();
    activeDice = _getDice();
  }

  void rollDice() {
    setState(() {
      activeDice = _getDice(num: randomizer.nextInt(6) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(activeDice, width: 200),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(2),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
