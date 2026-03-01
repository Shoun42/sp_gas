import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/common/common_next_button.dart';
import 'package:sp_gas/feature/screen/user/controller/splash_controller/splash_two_controller.dart';
class SplashTwoView extends GetView<SplashTwoController> {
  const SplashTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(alignment: Alignment.topRight,child: Text("Skip",),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Image.asset("assets/images/amico.png"),
            Spacer(),
            CommonNextButton(call: (){
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Allow "App" to use\nyour location?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Your precise location is used to show\n'
                                'your position on the map, get\n'
                                'directions, estimate travel times and\n'
                                'improve search results',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          TextButton(
                            onPressed: () {
                              //controller.moveToThreeScreen();
                            },
                            child: Text("Allow Once"),
                          ),
                          Divider(),
                          TextButton(
                            onPressed: () {
                              //controller.moveToThreeScreen();
                            },
                            child: Text("Allow While Using the App"),
                          ),
                          Divider(),
                          TextButton(
                            onPressed: () {
                              //controller.moveToThreeScreen();
                            },
                            child: Text(
                              "Don’t Allow",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
                text: "Next"),
            SizedBox(height: 96.h,)
          ],
        ),
      ),
    );
  }
}