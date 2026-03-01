import 'package:flutter/material.dart';

import '../app/app_color.dart';

class CommonNextButton extends StatelessWidget {
  const CommonNextButton({
    super.key,
    required this.call, required this.text,
  });

  final VoidCallback call ;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        return  call();
      },
      child: Container(
        height: 50,
        // width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.primaryColor
        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}