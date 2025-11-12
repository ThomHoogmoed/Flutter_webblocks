import 'package:flutter/material.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              RedGreenBlue(constraints: constraints),
              Yellow(constraints: constraints),
              MagentaCyanDarkRed(constraints: constraints),
            ],
          ),
        ),
      ),
    );
  }
}

class RedGreenBlue extends StatelessWidget {
  const RedGreenBlue({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return Column(
        children: [
          Align(
            alignment: AlignmentGeometry.center,
            child: Container(color: Colors.redAccent, constraints: BoxConstraints(maxWidth: 800), height: 200),
          ),
          Row(
            children: [
              Expanded(flex: 5, child: Container(color: Colors.lightGreenAccent, height: 200)),
              Expanded(child: Container(color: Colors.lightBlueAccent, height: 200)),
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(color: Colors.redAccent, height: 200),
          Container(color: Colors.blue, height: 200),
          Container(color: Colors.lightGreenAccent, height: 200),
        ],
      );
    }
  }
}

class Yellow extends StatelessWidget {
  const Yellow({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 200,
      width: constraints.maxWidth > 500 ? constraints.maxWidth / 2 : constraints.maxWidth,
    );
  }
}

class MagentaCyanDarkRed extends StatelessWidget {
  const MagentaCyanDarkRed({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return Row(
        children: [
          Container(color: Colors.purpleAccent, height: 200, width: constraints.maxWidth / 2),
          Expanded(child: Container(color: Colors.cyanAccent, height: 200)),
          Container(color: Colors.red, height: 200, width: 200),
        ],
      );
    } else {
      return Column(
        children: [
          Container(color: Colors.purpleAccent, height: 200),
          Row(
            children: [
              Expanded(child: Container(color: Colors.cyanAccent, height: 200)),
              Container(color: Colors.red, width: 200, height: 200),
            ],
          ),
        ],
      );
    }
  }
}
