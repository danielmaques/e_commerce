import 'package:e_comerce/style/colors.dart';
import 'package:e_comerce/view/widgets/custom_button.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartView extends StatelessWidget {
  List<String> names = <String>[
    'teste',
    'teste',
    'teste',
  ];
  List<String> images = <String>[
    'assets/imagens/Icon_User.png',
    'assets/imagens/Icon_Explore.png',
    'assets/imagens/Image.png',
  ];
  List<int> prices = <int>[
    100,
    200,
    300,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: names[index],
                                fontSize: 18,
                              ),
                              SizedBox(height: 10),
                              CustomText(
                                text: 'R\$ ${prices[index].toString()}',
                                color: AppColors.GEEN,
                                fontSize: 16,
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade200,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.black54,
                                    ),
                                    SizedBox(width: 20),
                                    CustomText(
                                      alignment: Alignment.center,
                                      text: '1',
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Icon(
                                        Icons.minimize,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: names.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 15);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'TOTAL',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      text: 'R\$ 200',
                      color: AppColors.GEEN,
                      fontSize: 18,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 90,
                  width: 140,
                  child: CustomButton(
                    onPressed: () {},
                    text: 'COMPRAR',
                    color: AppColors.GEEN,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
