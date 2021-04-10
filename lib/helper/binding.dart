import 'package:e_comerce/core/view_model/auth_view_model.dart';
import 'package:e_comerce/core/view_model/controller_view_model.dart';
import 'package:e_comerce/view/home/home_viel_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControllerViewModel());
    Get.lazyPut(() => HomeViewModel());
  }
}