import 'package:get/get.dart';
import 'package:sp_gas/app/app_pages.dart';
import 'package:sp_gas/feature/screen/user/bindings/authention_binding/authentication_binding.dart';
import 'package:sp_gas/feature/screen/user/bindings/splash_binding/splash_bindings.dart';
import 'package:sp_gas/feature/screen/user/view/authentication_view/sing_up/number_view.dart';
import 'package:sp_gas/feature/screen/user/view/splash_screen/splash_one_view.dart';
import 'package:sp_gas/feature/screen/user/view/splash_screen/splash_two_view.dart';

import '../feature/screen/user/view/authentication_view/sing_up/sing_up_view.dart';

class AppRoutes{
  static final initial= AppPages.initialPages;
  static List<GetPage>routes=[
    GetPage(name: AppPages.initialPages, page:()=>SplashOneView(),binding: SplashBindings()),
    GetPage(name: AppPages.SplashTwoPages, page:()=>SplashTwoView(),binding: SplashBindings()),

    GetPage(name: AppPages.NumberPage, page:()=>NumberView(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.SingInPage, page:()=>SingUpView(),binding: AuthenticationBindings()),


  ];
}