import 'package:e_comerce/style/colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomListProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * .4,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.shade100,
                  ),
                  child: Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width * .4,
                      child: Image.asset(
                        'assets/imagens/Image.png',
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(height: 4),
                CustomText(
                  text: 'Leather',
                  alignment: Alignment.bottomLeft,
                  fontSize: 16,
                ),
                SizedBox(height: 3),
                CustomText(
                  text: 'Leather',
                  alignment: Alignment.bottomLeft,
                  fontSize: 12,
                  color: AppColors.GREY92,
                ),
                SizedBox(height: 3),
                CustomText(
                  text: 'R\$ 1.234',
                  alignment: Alignment.bottomLeft,
                  color: AppColors.GEEN,
                  fontSize: 16,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
