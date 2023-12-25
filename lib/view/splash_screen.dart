import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstapp/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      // appBar: AppBar(
      //   title: Text('email_hint'.tr),
      // ),
      body: Center(child: Text('welcome_back', textAlign: TextAlign.center,),),
    );
  }
}