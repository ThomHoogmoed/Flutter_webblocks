import 'package:flutter/material.dart';

class Green extends StatelessWidget {
  const Green({super.key, required this.constraints, required this.maxWidth});

  final BoxConstraints constraints;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 117, 243, 113),
      constraints: BoxConstraints(maxWidth: maxWidth),
      width: constraints.maxWidth,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(
          builder: (context, innerConstraints) {
            if (constraints.maxWidth > 500) {
              return Row(
                children: [
                  SizedBox(
                    width: (innerConstraints.maxWidth - 20) / 2,
                    height: (innerConstraints.maxHeight - 20),
                    child: Container(color: Colors.red),
                  ),
                  Spacer(),
                  SizedBox(
                    width: (innerConstraints.maxWidth - 20) * 2 / 5,
                    child: Container(color: Colors.blue, child: AspectRatio(aspectRatio: 1)),
                  ),
                ],
              );
            } else {
              return Column(children: [
                Container(color: Colors.red, width: (innerConstraints.maxWidth - 20) / 2, height: innerConstraints.maxHeight - 10 - (innerConstraints.maxWidth - 20) * 2 / 5,),
                SizedBox(height: 10,),
                Container(width: (innerConstraints.maxWidth - 20) * 2 / 5,color: Colors.blue, child: AspectRatio(aspectRatio: 1),)
              ],
              );
            }
          },
        ),
      ),
    );
  }
}
