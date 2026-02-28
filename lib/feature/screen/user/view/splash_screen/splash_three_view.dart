import 'package:flutter/material.dart';
import 'package:get/get.dart';
 // তোমার next page

class SplashThreeView extends StatelessWidget {
  const SplashThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                // 👉 Back করা যাবে না

                // 👉 Back করতে চাইলে এটা ব্যবহার করো
                // Get.to(() => const HomeView());
              },
              child: Image.asset(
                "assets/images/location.png",
                height: 400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}