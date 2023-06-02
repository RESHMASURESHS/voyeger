import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  // const SecondPage({super.key});
  final String enteredText;

  SecondPage({required this.enteredText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text('$enteredText'),
       ),
    );
  }
}
