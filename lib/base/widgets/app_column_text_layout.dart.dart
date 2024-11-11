import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout(
      {super.key, required this.textTop, required this.textBottom, required this.alignment, this.isColor});
  final bool? isColor;
  final String textTop;
  final String textBottom;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: alignment,
      children: [
        Text(
          textTop,
          style: isColor==null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3,
        ),
        Text(
          textBottom,
          style: isColor==null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4,
        ),
      ],
    );
  }
}
