import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool isAnimating = false;
  final randomizer = Random();
  String activeDice = '';

  String _getDice({int num = 1}) {
    return 'assets/images/dice-$num.png';
  }

  @override
  void initState() {
    super.initState();
    activeDice = _getDice();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
  }

  void rollDice() async {
    setState(() {
      _controller.forward();
      isAnimating = true;
      activeDice = _getDice(num: randomizer.nextInt(6) + 1);
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _controller.reset();
      isAnimating = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: !isAnimating ? rollDice : null,
        child: RotationTransition(
          turns: Tween<double>(begin: 0, end: 5).animate(_controller),
          child: Image.asset(activeDice, width: 200),
        ),
      ),
    );
  }
}
