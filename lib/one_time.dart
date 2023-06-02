import 'package:flutter/material.dart';

class MyOneTime extends StatelessWidget {
  const MyOneTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(margin: EdgeInsets.only(left: 50,top: 30),
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),

            StackContainerWidget(
                radius: 15,
                padding: const EdgeInsets.only(left: 20),
                backgroundColor: Colors.red,
                containercolor: const Color.fromARGB(255, 12, 12, 12),
                margin: const EdgeInsets.only(bottom: 100, left: 140)),
        
            StackContainerWidget(
                radius: 15,
                padding: const EdgeInsets.only(left: 20),
                backgroundColor: Colors.red,
                containercolor: Color.fromARGB(255, 16, 201, 118),
                margin: const EdgeInsets.only(top: 100, left: 140)),

                 StackContainerWidget(
                radius: 15,
                padding: const EdgeInsets.only(left: 20),
                backgroundColor: Colors.red,
                containercolor: Color.fromARGB(255, 142, 10, 142),
                margin: const EdgeInsets.only(top: 100, right: 140)),

                 StackContainerWidget(
                radius: 15,
                padding: const EdgeInsets.only(left: 20),
                backgroundColor: Colors.red,
                containercolor: Color.fromARGB(255, 173, 74, 8),
                margin: const EdgeInsets.only(bottom: 100, right: 140)),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class StackContainerWidget extends StatelessWidget {
  Color backgroundColor;
  EdgeInsetsGeometry padding;
  double radius;
  Color containercolor;
  EdgeInsetsGeometry margin;
  StackContainerWidget({
    required this.radius,
    required this.padding,
    required this.backgroundColor,
    required this.containercolor,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: backgroundColor,
            ),
          ],
        ),
      ),
      margin: margin,
      height: 70,
      width: 70,
      color: containercolor,
    );
  }
}
