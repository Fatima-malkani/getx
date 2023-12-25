import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstapp/res/componets/round_button.dart';
import 'package:myfirstapp/utils/utils.dart';
import 'package:myfirstapp/view_model/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginViewModel loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login_screen'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackbarMessage('Email', 'Please enter an email');
                      }
                    },
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    onFieldSubmitted: (value) {
                      Utils.FieldFocusChange(
                          context,
                          loginVM.emailFocusNode.value,
                          loginVM.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                        hintText: 'email_hint'.tr,
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackbarMessage('Password', 'Enter password');
                      }
                    },
                    obscureText: true,
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    onFieldSubmitted: (value) {
                      // Utils.FieldFocusChange(context,loginVM.emailFocusNode.value , loginVM.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                        hintText: 'password_hint'.tr,
                        border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(() => RoundButton(
                loading: loginVM.loading.value,
                width: 200,
                title: 'login'.tr,
                onPress: () {
                  if (_formKey.currentState!.validate()) {
                    loginVM.loginApi();
                  }
                }))
          ],
        ),
      ),
    );
  }
}
