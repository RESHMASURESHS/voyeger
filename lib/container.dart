import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.amber,
                      ),
                  ],
                ),
              ),
              margin: const EdgeInsets.only(bottom: 100,left: 140),
              height: 70,
              width: 70,
              color: const Color.fromARGB(255, 61, 24, 193),
            ),
            Container(
              
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                   children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.amber,
                        ),
                    ],
              
                ),
              ),
               margin: const EdgeInsets.only(top: 130,right: 100),
              height: 70,
              width: 70,
              color: const Color.fromARGB(255, 0, 79, 90),
            ),
             StackContainerWidget(radius: 15, padding: const EdgeInsets.only(left: 20), backgroundColor: Colors.amber, containercolor: const Color.fromARGB(255, 12, 12, 12), margin:  const EdgeInsets.only(top: 130,left: 140)),
            StackContainerWidget(radius: 15, padding: const EdgeInsets.only(left: 20), backgroundColor: Colors.amber, containercolor: const Color.fromARGB(255, 12, 12, 12), margin:  const EdgeInsets.only(top: 150,left: 180)),
            StackContainerWidget(radius: 15, padding: const EdgeInsets.only(left: 20), backgroundColor: Colors.amber, containercolor: const Color.fromARGB(255, 12, 12, 12), margin:  const EdgeInsets.only(bottom: 100,left: 140)),
             Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                   children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.amber,
                        ),
                    ],
                ),
              ),
               margin: const EdgeInsets.only(top: 130,left: 140),
              height: 70,
              width: 70,
              color: const Color.fromARGB(255, 98, 18, 168),
            ),
             Container(
               margin: const EdgeInsets.only(top: 50,left: 50),
              height: 100,
              width: 110,
              color: const Color.fromARGB(255, 240, 100, 7),
            ),
      
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
    
  }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Padding(
       padding: padding,
       child: Row(
          children: [
             CircleAvatar(
               radius: radius,
               backgroundColor:backgroundColor,
               ),
           ],
       ),
     ),
      margin: const EdgeInsets.only(bottom: 50,right: 50),
     height: 70,
     width: 70,
     color: containercolor,
            );
  }
}