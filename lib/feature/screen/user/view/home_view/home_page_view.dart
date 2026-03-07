import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/home_controller/home_view_controller.dart';

class HomePageView extends GetView <HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F8FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              /// Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.blue),
                          SizedBox(width: 4),
                          Text(
                            "Dhaka",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Dhaka - 1216, Bangladesh",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: controller.moveToNotificationPages,
                          child: Icon(Icons.notification_add_rounded)),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 20,

                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),

              /// Search
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search clothes...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Filter Buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildContainerForButton(),
                    SizedBox(width: 10.w),
                    buildContainerForButton(),
                    SizedBox(width: 10.w),
                    buildContainerForButton(),
                    SizedBox(width: 10.w),
                    buildContainerForButton(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              /// Product Grid
              Expanded(
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: ()=>controller.moveToDetailsPage(),
                        child: productCard());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerForButton() {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      //  border: BoxBorder.all(color: Colors.black),
      ),
      child: Center(child: Text("all")),
    );
  }
  /// Product Card
  Widget productCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffDCEAF7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image:AssetImage("assets/images/Product1.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Product Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text("6 kg", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "\$212.99",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  Icon(Icons.monetization_on, size: 16, color: Colors.orange),
                  Text("100"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}