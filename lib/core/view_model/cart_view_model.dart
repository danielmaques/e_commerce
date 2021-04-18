import 'package:e_comerce/core/service/database/cart_database_helper.dart';
import 'package:e_comerce/model/cart_product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartViewModel extends GetxController{
  ValueNotifier<bool> get loading => _loading;

  ValueNotifier<bool> _loading = ValueNotifier(false);

  addProduct(CartProductModel cartProductModel)async{
    var dbHelper = CartDataBaseHelper.db;
    await dbHelper.insert(cartProductModel);
    update();
  }

}