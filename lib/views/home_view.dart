import 'package:flutter/material.dart';

import '../widgets/body_viewer.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() =>_HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void resetPoints() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: BodyViewer(
        teamAPoints: teamAPoints,
        teamBPoints: teamBPoints,
        onReset: resetPoints,
        onIncrement: (team, points) {
          setState(() {
            if (team == 'A') {
              teamAPoints += points;
            } else {
              teamBPoints += points;
            }
          });
        },
      ),
    );
  }
}