import 'package:e_comerce/core/view_model/auth_view_model.dart';
import 'package:e_comerce/style/colors.dart';
import 'package:e_comerce/view/widgets/custom_button_social.dart';
import 'package:e_comerce/view/widgets/custom_form_field.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Bem Vindo",
                  fontSize: 30,
                ),
                CustomText(
                  text: "Criar Conta",
                  fontSize: 18,
                  color: AppColors.GEEN,
                )
              ],
            ),
            SizedBox(height: 10),
            CustomText(text: "Entrar", fontSize: 14, color: AppColors.GREY92),
            SizedBox(height: 30),
            CustomTextFormField(
              text: "Email",
              hint: "digiteseuemail@emial.com",
              onSaved: (value) {},
              validator: (value) {},
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              text: "Senha",
              hint: "••••••••••",
              onSaved: (value) {},
              validator: (value) {},
            ),
            SizedBox(height: 20),
            CustomText(
              text: "Esqueci minha senha",
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(18),
              onPressed: () {

              },
              color: AppColors.GEEN,
              child: CustomText(
                text: "Entrar",
                color: Colors.white,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 20),
            CustomText(
              text: "-OU-",
              alignment: Alignment.center,
              color: Colors.black,
            ),
            SizedBox(height: 40),
            CustomButtonSocial(
              text: "Sign In with Facebook",
              imageName: "assets/imagens/facebook.png",
              onPress: (){
                controller.facebookSigninMethod();
              },
            ),
            SizedBox(height: 10),
            CustomButtonSocial(
              text: "Sign In with Google",
              imageName: "assets/imagens/google.png",
              onPress: (){
                controller.googleSignInMethod();
              },
            ),
          ],
        ),
      ),
    );
  }
}
