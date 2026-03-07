import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Settings"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: const Color(0xffEEF4FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [

            settingItem(
              icon: Icons.vpn_key,
              text: "Change password",
            ),

            settingItem(
              icon: Icons.info,
              text: "About us",
            ),

            settingItem(
              icon: Icons.warning_amber_rounded,
              text: "Terms & conditions",
            ),

            settingItem(
              icon: Icons.help,
              text: "Privacy policy",
            ),
          ],
        ),
      ),
    );
  }

  Widget settingItem({required IconData icon, required String text}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Color(0xffE3F2FD),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.blue,
          size: 20,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.grey,
      ),
      onTap: () {},
    );
  }
}