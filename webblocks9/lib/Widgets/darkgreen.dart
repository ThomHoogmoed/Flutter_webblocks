import 'package:flutter/material.dart';

class DarkGreen extends StatelessWidget {
  const DarkGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.redAccent)),
            SizedBox(height: 10,),
            Expanded(child: Row(children: [Expanded(child: Container(color: Colors.greenAccent,)), SizedBox(width: 10,), Expanded(child: Container(color: Colors.blue,))])),
          ],
        ),
      ),
    );
  }
}
