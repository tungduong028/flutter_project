import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  const AppLayoutbuilderWidget({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("- - - - - - - -", style: TextStyle(color: isColor==null ? Colors.white : Colors.lightBlueAccent),));
  }
}