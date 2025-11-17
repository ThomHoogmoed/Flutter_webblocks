import 'package:flutter/material.dart';

class DarkGreen extends StatelessWidget {
  const DarkGreen({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 163, 213, 238))),
              Spacer(flex: 1),
              Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 0, 82, 150))),
              SizedBox(width: 10),
              Expanded(flex: 2, child: Container(color: Colors.purple)),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(child: Container(color: const Color.fromARGB(255, 163, 213, 238))),
              SizedBox(height: 10),
              Expanded(
                child: Container(color: const Color.fromARGB(255, 0, 82, 150), width: (constraints.maxWidth - 40) / 2),
              ),
              SizedBox(height: 10),
              Expanded(child: Container(color: Colors.purple)),
            ],
          ),
        ),
      );
    }
  }
}
