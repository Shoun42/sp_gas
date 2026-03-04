import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/sing_up_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/sing_up_number_controller.dart' show NumberController;

class AuthenticationBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NumberController());
    Get.put(SingUpController());

  }

}