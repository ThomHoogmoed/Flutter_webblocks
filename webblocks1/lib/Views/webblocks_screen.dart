import 'package:flutter/material.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 500) {
              return Padding(
                padding: EdgeInsetsGeometry.all(5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.redAccent, height: 200)),
                          Container(color: Colors.white, width: 5),
                          Expanded(child: Container(color: Colors.lightGreenAccent, height: 200)),
                        ],
                      ),
                    ),
                    Container(color: Colors.blue, height: 200),
                    Container(color: Colors.white, height: 5),
                    Row(
                      children: [
                        Expanded(flex: 1, child: Container(color: Colors.cyanAccent, height: 200)),
                        Container(width: 5),
                        Expanded(flex: 3, child: Container(color: Colors.yellow, height: 200)),
                      ],
                    ),
                  ],
                ),
              );
            }
            return Padding(
              padding: EdgeInsetsGeometry.all(5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Column(
                      children: [
                        Container(color: Colors.redAccent, height: 200),
                        Container(color: Colors.white, height: 5),
                        Container(color: Colors.lightGreenAccent, height: 200),
                      ],
                    ),
                  ),
                  Container(color: Colors.white, width: 5),
                  Container(color: Colors.blue, height: 400),
                  Container(color: Colors.white, height: 5),
                  Row(
                    children: [
                      Expanded(child: Container(color: Colors.cyanAccent, height: 200)),
                      Container(width: 5),
                      Expanded(child: Container(color: Colors.yellow, height: 200)),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
