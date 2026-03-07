import 'package:flutter/material.dart';

import 'app_color.dart';

Widget customField({
  required IconData icon,
  required String hint,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: AppColor.lightBlue,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: AppColor.border),
    ),
    child: TextField(
      decoration: InputDecoration(
        icon: Icon(icon, color: AppColor.primary),
        hintText: hint,
        border: InputBorder.none,
      ),
    ),
  );
}