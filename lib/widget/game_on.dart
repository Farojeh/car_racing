import 'package:car_racing/controller/game_controller.dart';
import 'package:flutter/material.dart';

class GameOn extends StatelessWidget {
  final GameController contr;
  const GameOn({super.key, required this.contr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Stack(
        children: [
          Align(
              alignment:
                  contr.position ? Alignment.bottomLeft : Alignment.bottomRight,
              child: Image.asset(
                "assets/images/redcar.png",
                height: 180,
                width: 170,
              )),
          ...contr.cars.map((car) => Positioned(
              top: car.dy,
              left: car.dx,
              child: Image.asset(
                "assets/images/car.png",
                height: 180,
                width: 170,
              ))),
          contr.gameover
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Align(
                      alignment: contr.position
                          ? Alignment.bottomLeft
                          : Alignment.bottomRight,
                      child: Image.asset(
                        "assets/images/boom.png",
                        height: 150,
                        width: 170,
                      )),
                )
              : Container(),
        ],
      ),
    );
  }
}
