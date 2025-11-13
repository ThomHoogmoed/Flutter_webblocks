import 'package:flutter/material.dart';

class Red extends StatelessWidget {
  const Red({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Container(
        color: const Color.fromARGB(255, 128, 8, 0),
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.redAccent)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.lightGreenAccent)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.blue)),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: const Color.fromARGB(255, 128, 8, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(child: Container(color: Colors.redAccent)),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.blue)),
                    SizedBox(width: 10),
                    Expanded(child: Container(color: Colors.lightGreenAccent)),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
