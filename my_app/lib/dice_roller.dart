import "dart:math";
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = "assets/images/dice-1.png";

  void rollDice() {
    var diceRoll = Random().nextInt(6)+1;
    setState(() {
      activeDiceImage = "assets/images/dice-$diceRoll.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(height: 42),
          OutlinedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top:20),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 24.0),
              ),
              child: const Text("Roll Dice"))
        ],
      );
  }
}

