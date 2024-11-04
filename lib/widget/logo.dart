import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.8,
      right: MediaQuery.of(context).size.width * 0.1,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Image.asset(
          "assets/images/racing.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
