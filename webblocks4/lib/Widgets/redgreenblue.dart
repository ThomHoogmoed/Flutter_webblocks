import 'package:flutter/material.dart';

class RedGreenBlue extends StatelessWidget {
  const RedGreenBlue({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.red)),
                SizedBox(height: 5),
                Expanded(child: Container(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(width: 5),
          Expanded(child: Container(color: Colors.lightGreenAccent)),
        ],
      );
    } else {
      return Column(
        children: [
          Expanded(child: Container(color: Colors.red)),
          SizedBox(height: 5),
          Expanded(child: Container(color: Colors.blue)),
        ],
      );
    }
  }
}
