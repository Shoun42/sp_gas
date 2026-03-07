import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sp_gas/app/app_pages.dart';

class HomePageController extends GetxController{

    void moveToDetailsPage(){
      Get.toNamed(AppPages.productDetails);
    }
    void moveToNotificationPages(){
      Get.toNamed(AppPages.notificationView);
    }

}