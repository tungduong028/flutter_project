import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: color == null ? Colors.white : color!),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}