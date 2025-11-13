import 'package:flutter/material.dart';

class Blue extends StatelessWidget {
  const Blue({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    if (width > 500) {
      return Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: (width - 40) * 2 / 3,
                      child: Container(color: Colors.yellowAccent),
                    ),
                    SizedBox(width: 10),
                    Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 0, 98, 179))),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(child: Container(color: Colors.purpleAccent)),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: (width - 40) / 2,
                  child: Container(color: Color.fromARGB(255, 0, 98, 179)),
                ),
              ),
              SizedBox(height: 10),
              Expanded(flex: 1, child: Container(color: Colors.yellowAccent)),
              SizedBox(height: 10),
              Expanded(flex: 2, child: Container(color: Colors.purpleAccent)),
            ],
          ),
        ),
      );
    }
  }
}
