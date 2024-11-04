import 'package:car_racing/car.dart';
import 'package:car_racing/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      redbl: 20,
      redbr: 20,
      redtl: 20,
      redtr: 20,
      color: const Color.fromARGB(255, 239, 183, 43),
      height: 50,
      width: 200,
      child: const Text(
        "Start Game",
        style: TextStyle(fontSize: 16, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        Get.to(const Car());
      },
    );
  }
}
