import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sp_gas/common/common_next_button.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/verify_number_view_controller.dart';

class VerifyNumberView extends GetView <VerifyNumberViewController> {
  const VerifyNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title: Center(
      child: Text("Verify Number",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,),),
    ),),
      body: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 30.h,),
          Text("We have sent a verification code to your number.Please check your number and enter the code. ",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400),),
          SizedBox(height: 30.h,),
          SizedBox(height: 30.h,),
          MaterialPinField(
            length: 6,
            onCompleted: (pin) => print('PIN: $pin'),
            onChanged: (value) => print('Changed: $value'),
            theme: MaterialPinTheme(
              shape: MaterialPinShape.outlined,
              cellSize: Size(50.w, 64.h),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(height: 30.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Didn’t get the code?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              Text("Resend",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
            ],
          ),
          Spacer(),
          CommonNextButton(call: (){
            controller.moveToSetProfile();
          }, text: "Verify Number")
        ],
      ),
      ),
    );
  }
}