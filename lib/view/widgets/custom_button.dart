import 'package:e_comerce/style/colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Function onPressed;
  final color;

  CustomButton({this.text, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(18),
      onPressed: onPressed,
      color: color,
      child: CustomText(
        text: text,
        color: Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}
