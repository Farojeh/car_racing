import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;
  final double size;
  const TextTitle({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.55,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Rubik",
          fontSize: size,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          wordSpacing: 1.4,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
