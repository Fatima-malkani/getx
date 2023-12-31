import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstapp/repository/login_repository.dart';
import 'package:myfirstapp/utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.LoginApi(data).then((value) {
      loading.value = false;

        Utils.snackbarMessage('Login', 'Login Successfully');
      // if (value['error'] == 'user not found') {
      //   Utils.snackbarMessage('Login', value['error']);
      // } else {
      //   Utils.snackbarMessage('Login', 'Login Successfully');
      // }
    }).onError((error, stackTrace) {
       print(error.toString());

      loading.value = false;

      Utils.snackbarMessage('Error', error.toString());
    });
  }
}
