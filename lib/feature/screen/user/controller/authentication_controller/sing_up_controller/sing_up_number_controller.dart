import 'package:get/get.dart';
import 'package:sp_gas/app/app_pages.dart';

class NumberController extends GetxController {
  void moveToNextpage(){

    Get.toNamed(AppPages.singuppage);
  }
}