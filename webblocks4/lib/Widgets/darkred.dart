import 'package:flutter/material.dart';

class DarkRed extends StatelessWidget {
  const DarkRed({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color.fromARGB(255, 139, 9, 0),);
  }
}