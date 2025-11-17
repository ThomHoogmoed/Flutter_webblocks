import 'package:flutter/material.dart';
import 'package:webblocks9/Widgets/darkblue.dart';
import 'package:webblocks9/Widgets/darkgreen.dart';

class DarkRed extends StatelessWidget {
  const DarkRed({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    if(constraints.maxWidth>500)
    {
      return Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: [Expanded(child: DarkGreen()),SizedBox(width: 10,), Expanded(child: DarkBlue())],),
        ),
      );
    }
    else
    {
      return Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [Expanded(child: DarkGreen()),SizedBox(height: 10,), Expanded(child: DarkBlue())],),
        ),
      );
    }
  }
}