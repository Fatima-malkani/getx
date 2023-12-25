import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {

   @override
   Map<String , Map<String , String>> get keys => {
    'en_US': {
      'email_hint' : 'Email',
      'welcome_back' : 'Welcome \n Back',
      'login_screen' : 'Login Screen',
      'password_hint' : 'Password',
      'login' : 'Login'
    },
    'ur_PK' : {
      'email_hint' : 'یہاں درج کریں۔'
    }
   };
}