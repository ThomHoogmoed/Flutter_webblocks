import 'package:flutter/material.dart';

class Red extends StatelessWidget {
  const Red({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width,
        color:  const Color.fromARGB(255, 255, 132, 132),
        child: Padding(
          padding: EdgeInsets.fromLTRB(width > 500 ? (width - 10) * 2 / 3 : (width - 10) / 2, 10, 10, 10),
          child: Container(color: Colors.red),
        ),
      ),
    );
  }
}
