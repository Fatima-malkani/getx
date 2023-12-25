import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  // ignore: non_constant_identifier_names
  static void FieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextfocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus);
  }

  static ToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
  }

  static snackbarMessage(String title, String message) {
    Get.snackbar(title, message);
  }
}
