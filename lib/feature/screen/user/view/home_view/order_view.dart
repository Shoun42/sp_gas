import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sp_gas/app/app_images.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.Order)),
          SizedBox(height: 10.h,),
          Center(child: Text("You have no order item",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)),
        ],
      ),
    );
  }
}