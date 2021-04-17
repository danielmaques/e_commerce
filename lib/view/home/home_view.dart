import 'package:e_comerce/view/home/home_viel_model.dart';
import 'package:e_comerce/view/widgets/custom_list_products.dart';
import 'package:e_comerce/view/widgets/custom_search.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final List<String> names = <String>[
    'w',
    'w',
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.find(),
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    children: [
                      CustomSearchTextFormField(),
                      SizedBox(
                        height: 30,
                      ),
                      CustomText(
                        text: 'Categoria',
                        fontSize: 18,
                      ),
                      SizedBox(height: 30),
                      GetBuilder<HomeViewModel>(
                        builder: (controller) => SingleChildScrollView(
                          child: Container(
                            height: 100,
                            child: ListView.separated(
                              itemCount: controller.categoryModel.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.grey.shade100,
                                      ),
                                      height: 60,
                                      width: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(controller
                                            .categoryModel[index].image),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    CustomText(
                                      text: controller.categoryModel[index].name,
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Novidades',
                            fontSize: 18,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: CustomText(
                              text: 'Ver Mais',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 31),
                      CustomListProducts()
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
