import 'package:get/get.dart';
import 'package:sp_gas/app/app_pages.dart';
import 'package:sp_gas/feature/screen/user/bindings/authention_binding/authentication_binding.dart';
import 'package:sp_gas/feature/screen/user/bindings/home_bindings/home_binding.dart' show HomeBinding;
import 'package:sp_gas/feature/screen/user/bindings/splash_binding/splash_bindings.dart';
import 'package:sp_gas/feature/screen/user/view/accound/account_view.dart';
import 'package:sp_gas/feature/screen/user/view/accound/edit_account.dart';
import 'package:sp_gas/feature/screen/user/view/authentication_view/sing_in/sing_in_password.dart';
import 'package:sp_gas/feature/screen/user/view/authentication_view/sing_up/number_view.dart';
import 'package:sp_gas/feature/screen/user/view/authentication_view/sing_up/set_profile_view.dart';
import 'package:sp_gas/feature/screen/user/view/authentication_view/sing_up/verify_number_view.dart';
import 'package:sp_gas/feature/screen/user/view/home_view/home_page_view.dart';
import 'package:sp_gas/feature/screen/user/view/home_view/item_view.dart';
import 'package:sp_gas/feature/screen/user/view/home_view/notification_view.dart';
import 'package:sp_gas/feature/screen/user/view/home_view/order_view.dart';
import 'package:sp_gas/feature/screen/user/view/settings/setting_view.dart';
import 'package:sp_gas/feature/screen/user/view/splash_screen/splash_one_view.dart';
import 'package:sp_gas/feature/screen/user/view/splash_screen/splash_two_view.dart';

import '../feature/screen/user/view/authentication_view/sing_up/sing_up_view.dart';
import '../feature/screen/user/view/home_view/product_details.dart';
import '../feature/screen/user/view/monthly_consumption/monthlyconsumption.dart';

class AppRoutes{
  static final initial= AppPages.initialPages;
  static List<GetPage>routes=[
    GetPage(name: AppPages.initialPages, page:()=>SplashOneView(),binding: SplashBindings()),
    GetPage(name: AppPages.splashtwopages, page:()=>SplashTwoView(),binding: SplashBindings()),
    GetPage(name: AppPages.numberpage, page:()=>NumberView(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.singuppage, page:()=>SingUpView(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.verifyPage, page:()=>VerifyNumberView(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.setProfile, page:()=>SetProfileView(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.singinpass, page:()=>SingInPassword(),binding: AuthenticationBindings()),
    GetPage(name: AppPages.itemviewpage, page:()=>ItemView(),binding: HomeBinding()),
    GetPage(name: AppPages.homeView, page:()=>HomePageView(),binding: HomeBinding()),

    GetPage(name: AppPages.productDetails, page: ()=>ProductDetails(),binding: HomeBinding()),
    GetPage(name: AppPages.accountView, page: ()=>AccountView(),binding: HomeBinding()),
    GetPage(name: AppPages.editAccount, page: ()=>EditAccountView(),binding: HomeBinding()),
    GetPage(name: AppPages.orderview, page: ()=>OrderView(),binding: HomeBinding()),
    GetPage(name: AppPages.notificationView, page: ()=>NotificationView(),binding: HomeBinding()),
    GetPage(name: AppPages.settingsView, page: ()=>SettingsView(),binding: HomeBinding()),
    GetPage(name: AppPages.monthlyConsumptionView, page: ()=>MonthlyConsumptionView(),binding: HomeBinding()),




  ];
}