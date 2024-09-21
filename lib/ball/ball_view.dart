import 'dart:math';

import 'package:flutter/material.dart';

class BallView extends StatefulWidget {
  const BallView({super.key});

  @override
  State<BallView> createState() => _BallViewState();
}

class _BallViewState extends State<BallView> {
  int ballNumber = 1;

  void callBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero))),
          onPressed: () {
            callBallNumber();
          },
          child: Image.asset("assets/images/ball$ballNumber.png")),
    );
  }
}
