import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';

class TextStyleThirdTicket extends StatelessWidget {
  const TextStyleThirdTicket({super.key, required this.text, required this.isAlignEnd, this.isColor});

  final String text;
  final bool isAlignEnd;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Text(
        text,
        textAlign: isAlignEnd ? TextAlign.end : null,
        style: isColor==null ? AppStyles.headLineStyle3
            .copyWith(color: Colors.white) : AppStyles.headLineStyle3,
      ),
    );
  }
}