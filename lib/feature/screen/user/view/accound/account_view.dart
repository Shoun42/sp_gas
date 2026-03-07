import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sp_gas/feature/screen/user/controller/account_controller/account_controller.dart';
import '../splash_screen/splash_one_view.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F9FF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [

            /// Profile Section
            Container(
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage:
                    NetworkImage("https://i.pravatar.cc/150?img=47"),
                  ),
                  SizedBox(width: 12.w),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sagor Babu",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View and edit profile",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20.h),

            /// Menu List
            Expanded(
              child: ListView(
                children: [

                  buildMenuTile(
                    icon: Icons.person,
                    title: "Account",
                    onTap: controller.moveToEditView,
                  ),

                  buildMenuTile(
                    icon: Icons.shopping_bag,
                    title: "My Order",
                    onTap: controller.moveToOrder,
                  ),

                  buildMenuTile(
                    icon: Icons.account_balance_wallet,
                    title: "Loyalty Balance",
                    onTap: controller.moveToSettings,
                  ),

                  buildMenuTile(
                    icon: Icons.local_gas_station,
                    title: "Monthly Consumption",
                    onTap: controller.moveToMonthlyConsumption,
                  ),

                  buildMenuTile(
                    icon: Icons.settings,
                    title: "Settings",
                    onTap: controller.moveToSettings,
                  ),

                  /// Logout
                  buildMenuTile(
                    icon: Icons.logout,
                    title: "Logout",
                    onTap: () {
                      buildShowModalBottomSheet(context);
                    },
                    iconColor: Colors.red,
                    textColor: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Menu Tile Widget
  Widget buildMenuTile({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
    Color iconColor = const Color(0xff1E88E5),
    Color textColor = Colors.black,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: iconColor),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }

  /// Logout BottomSheet
  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Color(0xffE8EEF4),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              /// Drag line
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Divider(),

              const SizedBox(height: 10),

              const Text(
                "Are you sure you want to log out?",
                style: TextStyle(fontSize: 15),
              ),

              const SizedBox(height: 20),

              Row(
                children: [

                  /// Cancel
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text("Cancel"),
                    ),
                  ),

                  const SizedBox(width: 15),

                  /// Logout
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.offAll(() => const SplashOneView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1E88E5),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text("Yes, Logout"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}