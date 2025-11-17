import 'package:flutter/material.dart';

class Blue extends StatelessWidget {
  const Blue({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: SizedBox(
            height: (constraints.maxWidth - 100) * 0.4,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color.fromARGB(255, 255, 152, 186),
                    child: Center(child: Container(color: Colors.yellowAccent, width: 60, height: 60)),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    color: Colors.lightGreenAccent,
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(flex: 1, child: Container(color: Colors.cyanAccent)),
                                SizedBox(height: 10),
                                Expanded(flex: 1, child: Container(color: Colors.pink)),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 153, 10, 0))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Stack(
            children: [
              Container(height: 80, color: Color.fromARGB(255, 255, 152, 186)),
              Transform.translate(
                offset: Offset(0, 90),
                child: Container(
                  height: 360,
                  color: Colors.lightGreenAccent,
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container(color: Colors.cyanAccent)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: Colors.pink)),
                        SizedBox(height: 10),
                        Expanded(child: Container(color: const Color.fromARGB(255, 153, 10, 0))),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Transform.translate(
                  offset: Offset(0, -20),
                  child: Container(height: 120, color: Colors.yellow, width: 120),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
