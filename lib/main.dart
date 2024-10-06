import 'package:flappy/game_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flappy Bird",
      home: GameScreen(),
    );
  }
}
