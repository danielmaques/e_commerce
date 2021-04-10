import 'package:e_comerce/view/cart/cart_view.dart';
import 'package:e_comerce/view/home/home_view.dart';
import 'package:e_comerce/view/user/user_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerViewModel extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;

  Widget _currentScreen = HomeView();

  get currentScreen => _currentScreen;


  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeView();
          break;
        }
      case 1:
        {
          _currentScreen = CartView();
          break;
        }
      case 2:
        {
          _currentScreen = UserView();
          break;
        }
    }
    update();
  }
}
