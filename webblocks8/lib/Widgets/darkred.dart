import 'package:flutter/material.dart';
import 'package:webblocks8/Widgets/blue.dart';

class DarkRed extends StatelessWidget {
  const DarkRed({super.key, required this.constraints});
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 500) {
      return Container(
        color: const Color.fromARGB(255, 107, 7, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: AspectRatio(aspectRatio: 1, child: Container(color: Colors.red)),
              ),
              SizedBox(width: 10),
              Expanded(flex: 3, child: Blue(constraints: constraints)),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: const Color.fromARGB(255, 107, 7, 0),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.red)),
              SizedBox(height: 10),
              SizedBox(height: 470,child: Blue(constraints: constraints)),
            ],
          ),
        ),
      );
    }
  }
}
