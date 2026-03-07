import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/app/app_color.dart';
import 'package:sp_gas/common/common_next_button.dart';

import '../../../../../../common/coomon_from_text_fild.dart';
import '../../../controller/authentication_controller/sing_in_controller/sing_in_pass_controller.dart';

class SingInPassword extends GetView <SingInPassController> {
  const SingInPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Sign In",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            SizedBox(height: 50.h),

            Text(

              "Enter your password",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50.h),
            CommonTextFormField(
              primaryColor: AppColor.primaryColor,
              text: "Password",
              icons: Icon(Icons.lock),
            ),
            SizedBox(height: 5.h,),
            Text(
              "Forgot Password ? ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            CommonNextButton(call: () {
              controller.moveCardPage();
            }, text: "Sign In"),
            SizedBox(height: 50.h,),
          ],
        ),
      ),
    );
  }
}