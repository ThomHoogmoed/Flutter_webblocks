import 'package:flutter/material.dart';

class CyanYellow extends StatelessWidget {
  const CyanYellow({super.key, required this.constraints, required this.totalHeight});

  final BoxConstraints constraints;
  final double totalHeight;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return SizedBox(
        height: (totalHeight-5) /2,
        child: Row(
          children: [
            Container(color: Colors.cyanAccent, width: 200),
            Expanded(child: Container(color: Colors.white)),
            Container(color: Colors.yellow, width: 200),
          ],
        ),
      );
    } else {
      return SizedBox(
        height: (totalHeight - 10)/ 2.5,
        child: Row(children: [
          Expanded(child: Container(color: Colors.cyanAccent)),
          Container(color: Colors.white, width: 5,),
          Expanded(child: Container(color: Colors.yellow)),
          ]),
      );
    }
  }
}
