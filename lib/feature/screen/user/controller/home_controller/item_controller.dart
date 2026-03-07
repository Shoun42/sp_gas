import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sp_gas/feature/screen/user/view/accound/account_view.dart';
import 'package:sp_gas/feature/screen/user/view/home_view/cart_view.dart';
import 'package:sp_gas/feature/screen/user/view/home_view/order_view.dart' show OrderView;

import '../../view/authentication_view/sing_up/set_profile_view.dart';
import '../../view/home_view/home_page_view.dart';

class ItemController extends GetxController{

  RxInt selectIn = 0.obs;
  final List data =[
    HomePageView(),
    CartView(),
    OrderView(),
    AccountView(),
  ];

  
}