import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller>{

  var _currentDice = 1;
  final randomizer = Random();

  rollTheDice(){
    setState(() {
      _currentDice = randomizer.nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // Expand to full width
      children: [
        Image.asset(
          'assets/images/dice-$_currentDice.png',
          width: 200,
        ),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(onPressed: rollTheDice, child: Text("ROLL THE DICE!!!")),
      ],
    );
  }

}