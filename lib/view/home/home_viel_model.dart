import 'package:e_comerce/core/service/home_services.dart';
import 'package:e_comerce/model/category_model.dart';
import 'package:e_comerce/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  List<ProductModel> _productModel = [];


  HomeViewModel(){
    getCategory();
    getBestSeelignProducts();
  }

  getCategory()async{
    _loading.value = true;
    HomeService().getCategory().then((value) {
      for(int i = 0; i< value.length; i++){
        _categoryModel.add(CategoryModel.fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getBestSeelignProducts() async {
    _loading.value = true;
    HomeService().getBestSelling().then((value) {
      for(int i = 0; i< value.length; i++){
        _productModel.add(ProductModel.fromJson(value[i].data()));
        _loading.value = false;
      }
      print(_productModel.length);
      update();
    });
  }

}
