import 'package:flutter/material.dart';

class DarkYellow extends StatelessWidget {
  const DarkYellow({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Container(
        width: width - 20,
        color: const Color.fromARGB(255, 165, 126, 40),
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 800),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Color.fromARGB(255, 250, 120, 120))),
                  SizedBox(width: 10),
                  Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 114, 253, 186))),
                  SizedBox(width: 10),
                  Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 75, 166, 240))),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        color: const Color.fromARGB(255, 165, 126, 40),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 114, 253, 186))),
              SizedBox(height: 10),
              Expanded(flex: 1, child: Container(color: Color.fromARGB(255, 250, 120, 120))),
              SizedBox(height: 10),
              Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 75, 166, 240))),
            ],
          ),
        ),
      );
    }
  }
}
