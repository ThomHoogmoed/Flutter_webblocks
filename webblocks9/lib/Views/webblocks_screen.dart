import 'package:flutter/material.dart';
import 'package:webblocks9/Widgets/darkred.dart';

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
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(child: DarkRed(constraints: constraints)),
                  SizedBox(height: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.yellowAccent)),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Spacer(),
                              Expanded(child: Container(color: Colors.cyanAccent)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(flex: 3, child: DarkRed(constraints: constraints)),
                  SizedBox(height: 10),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        AspectRatio(aspectRatio: 1, child: Container(color: Colors.yellowAccent)),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Spacer(),
                              SizedBox(height: 10),
                              Expanded(child: Container(color: Colors.cyanAccent)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
