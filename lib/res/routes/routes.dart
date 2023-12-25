import 'package:get/get.dart';
import 'package:myfirstapp/res/routes/route_name.dart';
import 'package:myfirstapp/view/login_view.dart';
import 'package:myfirstapp/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(milliseconds: 250)),
        GetPage(
            name: RoutesName.loginView,
            page: () => LoginView(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(milliseconds: 250))
      ];
}
