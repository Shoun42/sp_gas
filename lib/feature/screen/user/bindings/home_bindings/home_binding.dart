import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/account_controller/account_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/account_controller/edit_account_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/home_controller/home_view_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/home_controller/item_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ItemController());
    Get.put(HomePageController());
    Get.put(AccountController());
    Get.put(EditAccountController());


  }

}