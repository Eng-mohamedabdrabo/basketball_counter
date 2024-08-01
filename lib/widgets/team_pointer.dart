import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';

class TeamPointer extends StatelessWidget {
  TeamPointer({
    super.key,
    required this.teamNum,
    required this.points,
    required this.onIncrement,
  });
  String teamNum;
  int points;
  final Function(int) onIncrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamNum,
          style: TextStyle(fontSize: 32),
        ),
        Text(
          '$points',
          style: TextStyle(fontSize: 170),
        ),
        CustomElevatedButton(
          text: 'Add 1 point',
          onPressed: () => onIncrement(1),
        ),
        CustomElevatedButton(
          text: 'Add 2 point',
          onPressed: () => onIncrement(2),
        ),
        CustomElevatedButton(
          text: 'Add 3 point',
          onPressed: () => onIncrement(3),
        ),
      ],
    );
  }
}