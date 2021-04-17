import 'package:e_comerce/model/product_model.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
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
              Container(
                padding: EdgeInsets.all(16),
                child: CustomText(
                  text: model.name,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            CustomText(
                              text: 'Tamanho',
                            ),
                            CustomText(
                              text: model.sized,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
