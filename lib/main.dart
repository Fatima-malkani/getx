import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myfirstapp/res/getx_localization/languages.dart';
import 'package:myfirstapp/res/routes/routes.dart';
import 'package:myfirstapp/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // home: SplashScreen(),
      translations: Languages(),
      locale: Locale('en' ,'US'),
      fallbackLocale: Locale('en' ,'US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
