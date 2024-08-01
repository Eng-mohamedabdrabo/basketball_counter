import 'package:basketball_conter/widgets/custom_elevated_button.dart';
import 'package:basketball_conter/widgets/team_pointer.dart';
import 'package:flutter/material.dart';

class BodyViewer extends StatelessWidget {
  const BodyViewer({
    super.key,
    required this.teamAPoints,
    required this.teamBPoints,
    required this.onReset,
    required this.onIncrement,
  });

  final int teamAPoints;
  final int teamBPoints;
  final VoidCallback onReset;
  final Function(String, int) onIncrement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamPointer(
                  teamNum: 'Team A',
                  points: teamAPoints,
                  onIncrement: (points) => onIncrement('A', points),
                ),
                VerticalDivider(
                  color: Colors.grey,
                ),
                TeamPointer(
                  teamNum: 'Team B',
                  points: teamBPoints,
                  onIncrement: (points) => onIncrement('B', points),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 90),
            child: CustomElevatedButton(
              text: 'RESET',
              onPressed: onReset,
            ),
          )
        ],
      ),
    );
  }
}
