import 'package:e_comerce/core/view_model/auth_view_model.dart';
import 'package:e_comerce/style/colors.dart';
import 'package:e_comerce/view/auth/register.view.dart';
import 'package:e_comerce/view/widgets/custom_button.dart';
import 'package:e_comerce/view/widgets/custom_button_social.dart';
import 'package:e_comerce/view/widgets/custom_form_field.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Entrar",
                    fontSize: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        RegisterView(),
                      );
                    },
                    child: CustomText(
                      text: "Criar Conta",
                      fontSize: 18,
                      color: AppColors.GEEN,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              CustomText(
                  text: "Bem Vindo", fontSize: 14, color: AppColors.GREY92),
              SizedBox(height: 30),
              CustomTextFormField(
                text: "Email",
                hint: "username@gmail.com",
                onSaved: (value) {
                  controller.email = value;
                },
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                text: "Senha",
                hint: "??????????????????????????????",
                onSaved: (value) {
                  controller.password = value;
                },
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              SizedBox(height: 20),
              CustomText(
                text: "Esqueci minha senha",
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                onPressed: () {
                  _formKey.currentState.save();

                  if (_formKey.currentState.validate()) {
                    controller.signInWithEmailAndPassword();
                  }
                },
                text: 'Entrar',
                color: AppColors.GEEN,
              ),
              SizedBox(height: 40),
              CustomText(
                text: "-OU-",
                alignment: Alignment.center,
                color: Colors.black,
              ),
              SizedBox(height: 40),
              CustomButtonSocial(
                text: "Sign In with Facebook",
                imageName: "assets/imagens/facebook.png",
                onPress: () {},
              ),
              SizedBox(height: 10),
              CustomButtonSocial(
                text: "Sign In with Google",
                imageName: "assets/imagens/google.png",
                onPress: () {
                  controller.googleSignInMethod();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
