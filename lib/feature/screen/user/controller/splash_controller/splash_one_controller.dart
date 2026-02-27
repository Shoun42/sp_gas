import 'package:get/get.dart';
import 'package:sp_gas/app/app_pages.dart';

class SplashOneController extends GetxController {
  Future <void> moveToNextPage()async{
    Future.delayed(Duration(seconds: 3));
    Get.toNamed(AppPages.SplashTwoPages);
  }
  void onReady(){
    moveToNextPage();
    super.onReady();
  }
}