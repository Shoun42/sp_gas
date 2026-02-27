import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/splash_controller/splash_one_controller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    void dependencies(){
      Get.put(SplashOneController());
    }
  }

}