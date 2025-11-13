import 'package:flutter/material.dart';
import 'package:webblocks7/widgets/darkblue.dart';
import 'package:webblocks7/widgets/darkyellow.dart';
import 'package:webblocks7/widgets/green.dart';
import 'package:webblocks7/widgets/red.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Expanded(flex: 1, child: Red(width: constraints.maxWidth)),
              SizedBox(height: 10),
              Expanded(flex: 1, child: Green(width: constraints.maxWidth)),
              SizedBox(height: 10),
              Expanded(flex: 3, child: DarkBlue(width: constraints.maxWidth)),
              SizedBox(height: 10),
              Expanded(flex: 1, child: DarkYellow(width: constraints.maxWidth)),
            ],
          ),
        ),
      ),
    );
  }
}
