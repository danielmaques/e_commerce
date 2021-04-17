import 'package:e_comerce/style/colors.dart';
import 'package:e_comerce/view/home/home_viel_model.dart';
import 'file:///C:/Users/ddani/AndroidStudioProjects/e_commerce/lib/view/products/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomListProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 300,
        child: ListView.separated(
          itemCount: controller.productModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(Details(
                  model: controller.productModel[index],
                ));
              },
              child: Container(
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
                        child: Image.network(
                          controller.productModel[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Expanded(
                      child: CustomText(
                        text: controller.productModel[index].name,
                        alignment: Alignment.bottomLeft,
                        maxLines: 1,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 3),
                    Expanded(
                      child: CustomText(
                        text: controller.productModel[index].description,
                        alignment: Alignment.bottomLeft,
                        maxLines: 1,
                        fontSize: 12,
                        color: AppColors.GREY92,
                      ),
                    ),
                    SizedBox(height: 3),
                    CustomText(
                      text: 'R\$ ${controller.productModel[index].price.toString()}',
                      alignment: Alignment.bottomLeft,
                      color: AppColors.GEEN,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 20),
        ),
      ),
    );
  }
}
