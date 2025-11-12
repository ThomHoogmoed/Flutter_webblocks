import 'package:flutter/material.dart';

class RedGreenBlue extends StatelessWidget {
  const RedGreenBlue({super.key, required this.constraints, required this.totalHeight});

  final BoxConstraints constraints;
  final double totalHeight;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return SizedBox(
        height: totalHeight,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.redAccent)),
                  Container(color: Colors.white, height: 5),
                  Expanded(flex: 1, child: Container(color: Colors.blue)),
                ],
              ),
            ),
            Container(width: 5, color: Colors.white),
            Expanded(
              flex: 1,
              child: Container(color: Colors.lightGreenAccent, height: totalHeight),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        height: totalHeight,
        child: Column(
          children: [
            Expanded(flex: 1, child: Container(color: Colors.redAccent)),
            Container(color: Colors.white, height: 5),
            Expanded(flex: 3, child: Container(color: Colors.lightGreenAccent)),
            Container(color: Colors.white, height: 5),
            Expanded(flex: 1, child: Container(color: Colors.blue)),
          ],
        ),
      );
    }
  }
}
