import 'package:e_comerce/core/service/database/cart_database_helper.dart';
import 'package:e_comerce/model/cart_product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;

  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CartProductModel> _cartProductModel = [];

  List<CartProductModel> get cartProductModel => _cartProductModel;

  CartViewModel() {
    getAllProduct();
  }

  getAllProduct() async {
    _loading.value = true;

    var dbHelper = CartDataBaseHelper.db;
    _cartProductModel = await dbHelper.getAllProduct();

    print(_cartProductModel.length);

    _loading.value = false;
    update();
  }

  addProduct(CartProductModel cartProductModel) async {
    var dbHelper = CartDataBaseHelper.db;
    await dbHelper.insert(cartProductModel);
    update();
  }
}
