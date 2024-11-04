import 'package:car_racing/controller/game_controller.dart';
import 'package:car_racing/widget/background.dart';
import 'package:car_racing/widget/game_off.dart';
import 'package:car_racing/widget/game_on.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {

  final controller = Get.put(GameController());
  @override
  void initState() {
    controller.dropingCar(context);
    super.initState();
  }

  @override
  void dispose() {
    controller.dis();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((c) {
      controller.gameactive ? controller.updateCars(context) : null;
      setState(() {});
    });
    return Scaffold(
      body: GetBuilder<GameController>(
        init: GameController(),
        builder: (contr) {
          return GestureDetector(
            onTap: () {
              contr.switchroud();
            },
            child: Stack(
              children: [
                ListView.builder(
                  controller:contr.scontrol,
                  reverse: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Background()
                ),
                GameOn(contr: contr),
                GameOff(contr: contr)
              ],
            ),
          );
        }
      ),
    );
  }
}
