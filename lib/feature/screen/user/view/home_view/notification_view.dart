import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text("Notification",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.notifications_active_outlined),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your account created successfully"),
                        Text("1 days ago"),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}