import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/home_controller/item_controller.dart';

class ItemView extends GetView<ItemController> {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.data[controller.selectIn.value]),

      bottomNavigationBar: Obx(
            () => Container(
          margin: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              )
            ],
          ),

          child: NavigationBar(
            height: 65.h,
            selectedIndex: controller.selectIn.value,
            backgroundColor: Colors.white,
            indicatorColor: const Color(0xff1E88E5).withOpacity(.2),

            labelBehavior:
            NavigationDestinationLabelBehavior.alwaysShow,

            onDestinationSelected: (index) {
              controller.selectIn.value = index;
            },

            destinations: const [

              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: "Home",
              ),

              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                selectedIcon: Icon(Icons.shopping_cart),
                label: "Cart",
              ),

              NavigationDestination(
                icon: Icon(Icons.receipt_long_outlined),
                selectedIcon: Icon(Icons.receipt_long),
                label: "Order",
              ),

              NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}