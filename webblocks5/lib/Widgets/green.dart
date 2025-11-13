import 'package:flutter/material.dart';

class Green extends StatelessWidget {
  const Green({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Container(
        color: const Color.fromRGBO(168, 253, 135, 1),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: (width - 20) / 3, vertical: 10),
          child: Container(color: Colors.green)
        ),
      );
    } else {
      return Container(
        height: 200,
        color: const Color.fromRGBO(168, 253, 135, 1),
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: Container(color: Colors.green, height: 100),
          ),
        ),
      );
    }
  }
}
