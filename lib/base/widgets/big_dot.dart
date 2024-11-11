import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});

  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: isColor == null ? Colors.white : Colors.lightBlueAccent!),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}