import 'package:e_comerce/core/view_model/auth_view_model.dart';
import 'package:e_comerce/view/auth/login_screen.dart';
import 'package:e_comerce/view/home/home.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return (Get.find<AuthViewModel>().user != null)
          ? HomeView()
          : LoginScreen();
    });
  }
}
