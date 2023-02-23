import 'package:flutter/material.dart';

class Planner extends StatefulWidget {
  const Planner({Key? key}) : super(key: key);

  @override
  State<Planner> createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: (Text(
        "Now planner your meal",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
