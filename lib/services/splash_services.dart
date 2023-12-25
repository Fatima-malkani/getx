import 'dart:async';

import 'package:get/get.dart';
import 'package:myfirstapp/res/routes/route_name.dart';

class SplashServices {
  void isLogin(){
    Timer(Duration(seconds: 5), () {
    Get.toNamed(RoutesName.loginView);
     });
  }
}