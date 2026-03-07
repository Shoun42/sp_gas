import 'package:get/get.dart';
import 'package:sp_gas/app/app_pages.dart';

class SingUpController extends GetxController{
  void  moveToVerifyPage (){
    Get.toNamed(AppPages.verifyPage);
}

}