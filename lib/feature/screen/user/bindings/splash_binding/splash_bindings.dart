
import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/splash_controller/splash_one_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/splash_controller/splash_three_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/splash_controller/splash_two_controller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencie
    Get.put(SplashOneController());
    Get.put(SplashTwoController());
    Get.put(SplashThreeController());


  }

}