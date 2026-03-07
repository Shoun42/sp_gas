import 'package:get/get.dart';
import 'package:sp_gas/app/app_pages.dart';

class SplashTwoController extends GetxController{

  Future<void> moveToNextPage()async{
   Get.toNamed(AppPages.numberpage);
  }
}