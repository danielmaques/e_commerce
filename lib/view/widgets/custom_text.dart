import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final color;
  final Alignment alignment;
  final int maxLines;

  CustomText({
    this.text = '',
    this.fontSize = 14,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.maxLines,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child:
      Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize, height: height,
        ),
        maxLines: maxLines,
      ),
    );
  }
}
