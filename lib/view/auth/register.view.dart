import 'package:e_comerce/core/view_model/auth_view_model.dart';
import 'package:e_comerce/style/colors.dart';
import 'package:e_comerce/view/widgets/custom_button.dart';
import 'package:e_comerce/view/widgets/custom_form_field.dart';
import 'package:e_comerce/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        )),
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
              CustomText(
                text: "Criar Conta",
                fontSize: 30,
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                text: "Nome",
                hint: "Digite seu nome",
                onSaved: (value) {},
                validator: (value) {},
              ),
              SizedBox(height: 20),
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
                hint: "••••••••••",
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
              CustomButton(
                onPressed: () {
                  _formKey.currentState.save();

                  if (_formKey.currentState.validate()) {
                    controller.signInWithEmailAndPassword();
                  }
                },
                text: 'Criar Conta',
                color: AppColors.GEEN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
