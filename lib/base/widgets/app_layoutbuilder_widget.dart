import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  const AppLayoutbuilderWidget({super.key, required this.randomDivider});

  final int randomDivider;

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("- - - - - - - -", style: TextStyle(color: Colors.white),));
  }
}