import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  ScrollController scontrol = ScrollController();
  bool position = true;
  bool gameactive = true;
  Random random = Random();
  bool gameover = false;
  List<Offset> cars = [];

  dropingCar(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1400), () {
      if (gameactive) {
        // ignore: use_build_context_synchronously
        double startx =
            // ignore: use_build_context_synchronously
            random.nextBool() ? 0 : MediaQuery.of(context).size.width - 280;
        cars.add(Offset(startx, 0));
        update();
      }
      // ignore: use_build_context_synchronously
      dropingCar(context);
    });
  }

  actionForScroll() {
    if (scontrol.hasClients &&
        scontrol.offset < scontrol.position.maxScrollExtent) {
      scontrol.jumpTo(scontrol.position.pixels + 20);
      update();
    } else {
      scontrol.jumpTo(scontrol.position.minScrollExtent);
      update();
    }
  }

  updateCars(BuildContext context) {
    actionForScroll();
    for (int i = 0; i < cars.length; i++) {
      cars[i] = Offset(cars[i].dx, cars[i].dy + 10);
      if ((MediaQuery.of(context).size.height - 100 > cars[i].dy) &&
          (0 < cars[i].dy)) {
        if (cars[i].dy == MediaQuery.of(context).size.height) {
          cars.removeAt(i);
          update();
          break;
        } else if ((cars[i].dx == 0 &&
                cars[i].dy >= MediaQuery.of(context).size.height - 280 &&
                position) ||
            (cars[i].dx == MediaQuery.of(context).size.width - 280 &&
                cars[i].dy >= MediaQuery.of(context).size.height - 280 &&
                position == false)) {
          gameactive = false;
          gameover = true;
          update();
          break;
        } else if (cars[i].dy == MediaQuery.of(context).size.height) {
          cars.removeAt(i);
          update();
          break;
        }
      } else if (cars[i].dy == MediaQuery.of(context).size.height) {
        cars.removeAt(i);
        update();
        break;
      }
      update();
    }
  }

  void switchroud() {
    if (!gameover) {
      position = !position;
      update();
    }
  }

  void restart() {
    position = true;
    gameactive = true;
    gameover = false;
    cars = [];
    update();
  }

  void dis(){
    scontrol.dispose();
  }
}
