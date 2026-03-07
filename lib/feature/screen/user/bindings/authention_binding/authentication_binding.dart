import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_in_controller/sing_in_pass_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/set_Profile_view_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/sing_up_controller.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/sing_up_number_controller.dart' show NumberController;
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/verify_number_view_controller.dart';

class AuthenticationBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NumberController());
    Get.put(SingUpController());
    Get.put(VerifyNumberViewController());
    Get.put(SetProfileViewController());
    Get.put(SingInPassController());

  }

}