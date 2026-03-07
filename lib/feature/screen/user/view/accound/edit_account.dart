import 'package:flutter/material.dart';
import 'package:sp_gas/app/app_color.dart';

import '../../../../../app/app_custom_field.dart';

class EditAccountView extends StatelessWidget {
  const EditAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Account"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffF7FBFF),
              Color(0xffDCEAF7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [

            Stack(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=47",
                  ),
                ),

                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.image,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 10),

            const Text(
              "Sabrina Carpenter",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Change picture",
              style: TextStyle(color: Colors.blue),
            ),

            const SizedBox(height: 25),

            customField(
              icon: Icons.person,
              hint: "Sagor Babu",
            ),

            customField(
              icon: Icons.email,
              hint: "shounbabu31@ymail.com",
            ),

            customField(
              icon: Icons.phone,
              hint: "+880 0000 0000",
            ),

            customField(
              icon: Icons.location_on,
              hint: "2972 Westheimer Rd. Santa Ana",
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text("Update Profile"),
              ),
            )
          ],
        ),
      ),
    );
  }
}