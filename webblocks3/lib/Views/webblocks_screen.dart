import 'package:flutter/material.dart';
import 'package:webblocks3/Widgets/cyan_yellow.dart';
import 'package:webblocks3/Widgets/red_green_blue.dart';

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
              RedGreenBlue(constraints: constraints, totalHeight: 500,),
              Container(color: Colors.white,height: 5,),
              CyanYellow(constraints: constraints, totalHeight: 500),
            ],
          ),
        ),
      ),
    );
  }
}




