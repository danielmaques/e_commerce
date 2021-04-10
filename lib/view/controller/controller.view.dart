import 'package:e_comerce/core/view_model/auth_view_model.dart';
import 'package:e_comerce/core/view_model/controller_view_model.dart';
import 'package:e_comerce/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginScreen()
          : GetBuilder<ControllerViewModel>(
              builder:(controller) => Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: bottomNavigationBar(),
              ),
            );
    });
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControllerViewModel>(
      init: ControllerViewModel(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Text('Home'),
              label: '',
              icon: Image.asset(
                'assets/imagens/Icon_Explore.png',
                fit: BoxFit.contain,
                width: 20,
              )),
          BottomNavigationBarItem(
              activeIcon: Text('Carrinho'),
              label: '',
              icon: Image.asset(
                'assets/imagens/Icon_Cart.png',
                fit: BoxFit.contain,
                width: 20,
              )),
          BottomNavigationBarItem(
              activeIcon: Text('Usiuario'),
              label: '',
              icon: Image.asset(
                'assets/imagens/Icon_User.png',
                fit: BoxFit.contain,
                width: 20,
              )),
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
          },
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}
