import 'package:e_comerce/style/colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  CustomButtonSocial({
    this.text,
    this.imageName,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade100,
      ),
      child: FlatButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(imageName),
            SizedBox(width: 90),
            CustomText(
              text: text,
            )
          ],
        ),
      ),
    );
  }
}
