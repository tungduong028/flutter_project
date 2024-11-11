import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';

class TextStyleFourthTicket extends StatelessWidget {
  const TextStyleFourthTicket({super.key, required this.text, this.isAlign=TextAlign.end, this.isColor});

  final String text;
  final TextAlign isAlign;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Text(
        text,
        textAlign: isAlign,
        style: isColor==null ? AppStyles.headLineStyle4
            .copyWith(color: Colors.white) : AppStyles.headLineStyle4,
      ),
    );
  }
}