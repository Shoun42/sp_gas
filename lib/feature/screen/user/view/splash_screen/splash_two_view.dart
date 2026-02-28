import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/app/app_color.dart';
import 'package:sp_gas/feature/screen/user/controller/splash_controller/splash_two_controller.dart';
import 'package:sp_gas/feature/screen/user/view/splash_screen/splash_three_view.dart';

class SplashTwoView extends GetView<SplashTwoController> {
  const SplashTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(56.r),

              ),
              child: Image.asset("assets/images/amico.png",),

            ),
          ),

          SizedBox(height: 60.h),

          // 🔥 Nice Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: SizedBox(
              width: double.infinity,
              height: 55.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  controller.moveToNextPage();

                  // Next page navigation
                },
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.normal,color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}