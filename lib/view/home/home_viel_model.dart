import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comerce/model/category_model.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  List<CategoryModel> get categoryModel => _categoryModel;
  List<CategoryModel> _categoryModel = [];

  final CollectionReference _categoryCollectionRef =
      FirebaseFirestore.instance.collection('Categories');

  HomeViewModel(){
    getCategory();
  }

  getCategory()async{
    _categoryCollectionRef.get().then((value) {
      for(int i = 0; i< value.docs.length; i++){
        _categoryModel.add(CategoryModel.fromJson(value.docs[i].data()));
        print(_categoryModel.length);
      }
      update();
    });
  }
}
