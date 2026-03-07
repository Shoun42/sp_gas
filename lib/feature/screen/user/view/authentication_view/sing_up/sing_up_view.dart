import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/app/app_color.dart';
import 'package:sp_gas/common/coomon_from_text_fild.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/sing_up_controller.dart';

import '../../../../../../common/common_next_button.dart';
import '../../../../../../common/common_number_button.dart' show CommonNumberButton;

class SingUpView extends GetView <SingUpController> {
  const SingUpView({super.key});

  get fildColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(children: [const Icon(Icons.arrow_back), Spacer()]),
                const SizedBox(height: 30),
                const Text(
                  "Sign Up to Join",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 25),

                TextField(
                  decoration: InputDecoration(
                    hintText: "First Name",
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: AppColor.primaryColor,
                    ),
                    filled: true,
                    fillColor: fildColor,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                      BorderSide(color: AppColor.primaryColor),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: AppColor.primaryColor,
                    ),
                    filled: true,
                    fillColor: fildColor,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                      BorderSide(color: AppColor.primaryColor),
                    ),
                  ),
                ),
               SizedBox(height: 25,),

                CommonNumberButton(),
                SizedBox(height: 15.h),


                CommonTextFormField(
                  primaryColor: AppColor.primaryColor,
                  fieldColor: fildColor,
                  text: "Password",
                  icons: Icon(Icons.lock),
                ),

                SizedBox(height: 15.h),

                /// Confirm Password
                CommonTextFormField(
                  primaryColor: AppColor.primaryColor,
                  fieldColor: fildColor,
                  text: "Confirm Password",
                  icons: Icon(Icons.lock),
                ),

                SizedBox(height: 25.h),
                Row(children: [Icon(Icons.check_box_outline_blank),
                  Text("By creating an account, I accept the Terms  \n& Conditions & Privacy Policy.",style: TextStyle(fontWeight: FontWeight.normal ),),
                ],),
                SizedBox(height: 25.h),

                /// Button
                CommonNextButton(call: () {
                  controller.moveToVerifyPage();
                }, text: 'Sign Up'),

                SizedBox(height: 30.h),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
