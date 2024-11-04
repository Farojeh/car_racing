import 'package:car_racing/controller/game_controller.dart';
import 'package:car_racing/widget/custom_button.dart';
import 'package:car_racing/widget/custom_cart_start.dart';
import 'package:car_racing/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameOff extends StatelessWidget {
  final GameController contr;
  const GameOff({super.key, required this.contr});

  @override
  Widget build(BuildContext context) {
    return contr.gameactive == false
        ? CustomCartStart(
            child: [
              const TextTitle(text: "Oops , Game Over ", size: 30),
              CustomButton(
                redbl: 20,
                redbr: 20,
                redtl: 20,
                redtr: 20,
                color: const Color.fromARGB(255, 239, 183, 43),
                height: 50,
                width: 200,
                child: const Text(
                  "Restart Game",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  contr.restart();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                redbl: 20,
                redbr: 20,
                redtl: 20,
                redtr: 20,
                color: const Color.fromARGB(255, 239, 183, 43),
                height: 50,
                width: 200,
                child: const Text(
                  "Exit",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          )
        : Container();
  }
}
