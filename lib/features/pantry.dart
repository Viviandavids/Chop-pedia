import 'package:flutter/material.dart';

class Pantry extends StatefulWidget {
  const Pantry({Key? key}) : super(key: key);

  @override
  State<Pantry> createState() => _PantryState();
}

class _PantryState extends State<Pantry> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: (Text(
        "Hello, Let's see what you have in your pantry",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
