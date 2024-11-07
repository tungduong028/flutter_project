import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';

class TextStyleFourthTicket extends StatelessWidget {
  const TextStyleFourthTicket({super.key, required this.text, required this.isAlignEnd});

  final String text;
  final bool isAlignEnd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text(
        text,
        textAlign: isAlignEnd ? TextAlign.end : null,
        style: AppStyles.headLineStyle4
            .copyWith(color: Colors.white),
      ),
    );
  }
}