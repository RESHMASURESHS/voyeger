// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:voyeger/second_page.dart';

class MyValue extends StatelessWidget {
  final controller = TextEditingController();
  MyValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: "Enter text"),
          ),

          TextButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SecondPage(enteredText: controller.text);
                  },
                ));
              },
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Next page')
              )
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names

