import 'package:flutter/material.dart';

class CyanYellowPink extends StatelessWidget {
  const CyanYellowPink({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Row(
        children: [
          Expanded(child: Container(color: Colors.cyanAccent)),
          SizedBox(width: 5),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.yellowAccent)),
                const SizedBox(height: 5),
                Expanded(child: Container(color: Colors.purpleAccent)),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Expanded(child: Container(color: Colors.yellowAccent)),
          const SizedBox(height: 5),
          Expanded(child: Container(color: Colors.purpleAccent)),
        ],
      );
    }
  }
}
