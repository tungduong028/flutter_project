import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  const AppLayoutbuilderWidget({super.key, required this.randomDivider});

  final int randomDivider;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Flex(
        direction: Axis.horizontal,
        children: List.generate((constrains.constrainWidth()/randomDivider).floor(), (index) => 
          const SizedBox(
            width: 3,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    });
  }
}