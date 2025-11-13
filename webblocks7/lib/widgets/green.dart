import 'package:flutter/material.dart';

class Green extends StatelessWidget {
  const Green({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 20,
      color: Colors.green,
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 800),
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.yellow)),
                SizedBox(width: 10,),
                Expanded(child: Container(color: Colors.purpleAccent)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
