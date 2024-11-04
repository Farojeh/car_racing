import 'package:flutter/material.dart';

class CustomCartStart extends StatelessWidget {
  final List<Widget> child ;
  const CustomCartStart({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: child
              ),
            ),
          );
  }
}