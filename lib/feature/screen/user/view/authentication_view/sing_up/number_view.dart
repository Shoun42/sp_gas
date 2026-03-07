import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_gas/common/common_next_button.dart';
import 'package:sp_gas/common/common_number_button.dart';
import 'package:sp_gas/feature/screen/user/controller/authentication_controller/sing_up_controller/sing_up_number_controller.dart';

class NumberView extends GetView <NumberController> {
  const NumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2) ,
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100,),
          const Text("What’s your number?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          const SizedBox(height: 8,),
          const Text("We’ll check if you have an account",style: TextStyle(fontSize: 14,color: Colors.grey),),
          const SizedBox(height: 30,),
          CommonNumberButton(),
          const Spacer(),
          CommonNextButton(call: (){

            controller.moveToNextpage();}, text: "Continue"),

          const SizedBox(height: 40,)
        ],
      ),
      ),

    );
  }
}
