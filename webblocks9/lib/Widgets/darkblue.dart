import 'package:flutter/material.dart';

class DarkBlue extends StatelessWidget {
  const DarkBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 79, 143),
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            Expanded(child: Container(color: const Color.fromARGB(255, 240, 151, 145))),
            SizedBox(height: 10),
            Expanded(child: Container(color: Colors.lightGreenAccent)),
          ],
        ),
      ),
    );
  }
}
