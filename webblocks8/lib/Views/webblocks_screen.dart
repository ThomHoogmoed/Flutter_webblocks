import 'package:flutter/material.dart';
import 'package:webblocks8/Widgets/darkgreen.dart';
import 'package:webblocks8/Widgets/darkred.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                children: [
                  DarkRed(constraints: constraints),
                  SizedBox(height: 10),
                  Expanded(child: DarkGreen(constraints: constraints)),
                ],
              ),
            );
          } else {
            double padding = 10;
            double gap = 10;
            double fixedSize = 470;

            double totalFixed = fixedSize + 2 * padding + gap;
            if (totalFixed >= constraints.maxHeight) {
              return Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  children: [
                    SizedBox(
                      height: totalFixed,
                      child: DarkRed(constraints: constraints),
                    ),
                    SizedBox(height: gap),
                    SizedBox(height: 0, child: DarkGreen(constraints: constraints)),
                  ],
                ),
              );
            } else {
              double restHeight = constraints.maxHeight - totalFixed;
              print("rest: $restHeight");
              double redHeight = restHeight / 4;
              double greenHeight = restHeight * 3 / 4;
              return Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  children: [
                    SizedBox(
                      height: fixedSize + redHeight,
                      child: DarkRed(constraints: constraints),
                    ),
                    SizedBox(height: gap),
                    SizedBox(
                      height: greenHeight,
                      child: DarkGreen(constraints: constraints),
                    ),
                  ],
                ),
              );
            }
          }
        },
      ),
    );
  }
}
