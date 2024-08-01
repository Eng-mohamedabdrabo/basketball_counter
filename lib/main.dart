import 'package:basketball_conter/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BasketballCounter());
}

class BasketballCounter extends StatelessWidget {
  const BasketballCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}
