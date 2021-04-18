import 'package:e_comerce/model/product_model.dart';
import 'package:e_comerce/style/colors.dart';
import 'package:e_comerce/view/widgets/custom_button.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  ProductModel model;

  Details({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  model.image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16),
                child: Text(
                  model.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .45,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: 'Tamanho',
                        ),
                        CustomText(
                          text: model.sized,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .45,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                          text: 'Cor',
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: model.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      CustomText(
                        text: 'Descrição',
                        fontSize: 18,
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CustomText(
                          text: model.description,
                          color: AppColors.GREY92,
                          fontSize: 16,
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: "Preço ",
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 2),
                        CustomText(
                          text: ' \$' + model.price,
                          color: AppColors.GEEN,
                          fontSize: 18,
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 180,
                      height: 100,
                      child: CustomButton(
                        onPressed: () {},
                        text: 'Add',
                        color: AppColors.GEEN,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
