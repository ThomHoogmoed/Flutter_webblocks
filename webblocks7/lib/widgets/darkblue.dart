import 'package:flutter/material.dart';

class DarkBlue extends StatelessWidget {
  const DarkBlue({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Container(
        color: const Color.fromARGB(255, 0, 74, 134),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: const Color.fromARGB(255, 229, 111, 250),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.blueGrey)),
                        SizedBox(width: 10),
                        Expanded(child: Container(color: Colors.purple)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 137),
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.cyanAccent)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: Color.fromARGB(255, 0, 74, 134),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 229, 111, 250),
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.blueGrey)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.purple)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 255, 137),
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.cyanAccent)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
