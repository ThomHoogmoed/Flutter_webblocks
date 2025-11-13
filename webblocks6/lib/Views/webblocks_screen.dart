import 'package:flutter/material.dart';
import 'package:webblocks6/Widgets/green.dart';

class WebblocksScreen extends StatelessWidget {
  const WebblocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              Container(
                height: (constraints.maxWidth-20)/3>200? (constraints.maxWidth-20)/3 : 200,
                color: const Color.fromARGB(255, 255, 140, 140),
                child: Row(children: [
                  Container(color: Colors.red, width: (constraints.maxWidth-20)/3, height: 200,),
                  Container(color: Colors.green, width: (constraints.maxWidth-20)/3, height: (constraints.maxWidth-20)/3,),
                  Align(alignment: AlignmentGeometry.center, child: Container(color: Colors.blue,width: (constraints.maxWidth-20)/3,height: (constraints.maxWidth - 20)*2/15,),)
                ]),
              ),
              SizedBox(height: 10,),
              Expanded(child: Green(constraints: constraints, maxWidth: 800,))
            ],
          ),
        ),
      ),
    );
  }
}
