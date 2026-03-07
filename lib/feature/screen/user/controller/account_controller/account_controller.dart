import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sp_gas/app/app_pages.dart';

class AccountController extends GetxController{

  void moveToEditView(){
    Get.toNamed(AppPages.editAccount);
  }
  void moveToOrder(){
    Get.toNamed(AppPages.orderview);
  }
void moveToSettings(){
    Get.toNamed(AppPages.settingsView);
  }
  void moveToMonthlyConsumption(){
    Get.toNamed(AppPages.monthlyConsumptionView);
  }

}