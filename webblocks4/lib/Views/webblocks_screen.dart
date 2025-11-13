import 'package:flutter/material.dart';
import 'package:webblocks4/Widgets/cyanyellowpink.dart';
import 'package:webblocks4/Widgets/darkred.dart';
import 'package:webblocks4/Widgets/redgreenblue.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: 0.4 * (height - 20),
              child: RedGreenBlue(width: width),
            ),
            Container(height: 5, color: Colors.white),
            SizedBox(
              height: 0.4 * (height - 20),
              child: CyanYellowPink(width: width),
            ),
            Container(height: 5, color: Colors.white),
            SizedBox(
              height: 0.2 * (height - 20),
              child: DarkRed(width: width),
            ),
          ],
        ),
      ),
    );
  }
}
