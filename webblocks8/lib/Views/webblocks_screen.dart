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
          print(constraints.maxHeight);
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
                    SizedBox(height: 0),
                    SizedBox(height: 0, child: DarkGreen(constraints: constraints)),
                  ],
                ),
              );
            } else if (constraints.maxHeight - totalFixed < 40 && constraints.maxHeight > 30) {
              double redHeight = 500;
              double greenHeight = 0;
              return Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  children: [
                    SizedBox(
                      height: redHeight + constraints.maxHeight - totalFixed - 30 ,
                      child: DarkRed(constraints: constraints),
                    ),
                    SizedBox(height: 0),
                    SizedBox(
                      height: greenHeight,
                      child: DarkGreen(constraints: constraints),
                    ),
                  ],
                ),
              );
            } else {
              double restHeight = constraints.maxHeight - totalFixed;
              print("rest: $restHeight");
              double redHeight = restHeight > 0 ? (restHeight / 4) + totalFixed : 470;
              double greenHeight = restHeight > 0 ? (restHeight * 3 / 4) - 30 : 0;
              return Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  children: [
                    SizedBox(
                      height: redHeight,
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
