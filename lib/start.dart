import 'package:car_racing/widget/background.dart';
import 'package:car_racing/widget/custom_cart_start.dart';
import 'package:car_racing/widget/logo.dart';
import 'package:car_racing/widget/start_button.dart';
import 'package:car_racing/widget/title.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          Logo(),
          CustomCartStart(
            child: [
              TextTitle(text: "RACING GAME ", size: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Text(
                  "Click to start the game and enjoy a great racing experience",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              StartButton()
            ],
          )
        ],
      ),
    );
  }
}
