import 'package:flappy/component/button.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            // background
            Positioned.fill(
              child: Image.asset(
                'assets/images/background-day.png',
                fit: BoxFit.cover,
              ),
            ),
            // Ground
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/base.png',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            // Bird
            AnimatedContainer(
              alignment: const Alignment(0, 0),
              duration: const Duration(milliseconds: 0),
              child: Image.asset(
                'assets/images/bluebird-midflap.png',
                width: 50,
              ),
            ),
            // TODO: Pipes

            // Score display
            Positioned(
              top: 50,
              left: MediaQuery.of(context).size.width / 2 -
                  25, // Center the score
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/7.png'),
                  Image.asset('assets/images/9.png'),
                ],
              ),
            ),

            // Restart Game Button
            const Center(
              child: MyButton(text: "Restart"),
            ),
          ],
        ),
      ),
    );
  }
}
