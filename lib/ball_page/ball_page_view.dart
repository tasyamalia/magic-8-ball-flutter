import 'package:flutter/material.dart';
import 'package:magic_8_ball_flutter/ball/ball_view.dart';

class BallPageView extends StatelessWidget {
  const BallPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Ask Me Anything",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const BallView(),
    );
  }
}
