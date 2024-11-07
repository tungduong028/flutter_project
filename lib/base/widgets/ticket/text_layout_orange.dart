import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';

class TextLayoutOrange extends StatelessWidget {
  const TextLayoutOrange(
      {super.key, required this.textTop, required this.textBottom, required this.alignment,});

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
          style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Text(
          textBottom,
          style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
