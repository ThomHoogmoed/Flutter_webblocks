import 'package:flutter/material.dart';
import 'package:webblocks5/Widgets/blue.dart';
import 'package:webblocks5/Widgets/green.dart';
import 'package:webblocks5/Widgets/red.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 500) {
              return Column(
                children: [
                  Expanded(child: Red(width: constraints.maxWidth)),
                  SizedBox(height: 10),
                  SizedBox(height: 500, child: Blue(width: constraints.maxWidth)),
                  SizedBox(height: 10),
                  Spacer(),
                  Expanded(child: Green(width: constraints.maxWidth)),
                ],
              );
            }
            else{
              return Column(
                children: [
                  Expanded(child: Red(width: constraints.maxWidth)),
                  SizedBox(height: 10),
                  SizedBox(height: 600, child: Blue(width: constraints.maxWidth)),
                  SizedBox(height: 10),
                  Green(width: constraints.maxWidth),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
