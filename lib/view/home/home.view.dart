import 'package:e_comerce/view/widgets/custom_list_products.dart';
import 'package:e_comerce/view/widgets/custom_search.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final List<String> names = <String>[
    'Maculino',
    'Feminino',
    'Todos',
    'ola teste',
    'testee',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
            CustomSearchTextFormField(),
            SizedBox(
              height: 44,
            ),
            CustomText(
              text: 'Categoria',
              fontSize: 18,
            ),
            SizedBox(height: 30),
            Container(
              height: 100,
              child: ListView.separated(
                itemCount: names.length,
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
                          child:
                              Image.asset('assets/imagens/Icon_Mens Shoe.png'),
                        ),
                      ),
                      SizedBox(height: 20),
                      CustomText(
                        text: names[index],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 20),
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
                  onTap: (){},
                  child: CustomText(
                    text: 'Ver Mais',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            CustomListProducts()
          ],
        ),
      ),
    );
  }
}
