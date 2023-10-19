import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/notification_switch.dart';
import '../../core/design/pro_container_view.dart';


class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff111827),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff111827),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProContainerView(title: "Job notification"),
            SizedBox(height: 32.h,),
            NotificationSwitch(title: "Your Job Search Alert"),
            SizedBox(height: 12.h,),
            Divider(
                color: Color(0xffD1D5DB),
                height: 20.h,
                thickness: 2,
                endIndent: 24,
                indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationSwitch(title: "Job Application Updatev"),
            SizedBox(height: 12.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationSwitch(title: "Job Application Reminders"),
            SizedBox(height: 12.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationSwitch(title: "Jobs You May Be Interested In"),
            SizedBox(height: 12.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationSwitch(title: "Job Seeker Updates"),
            SizedBox(height: 12.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 32.h,),
            ProContainerView(title: "Other notification"),
            SizedBox(height: 12.h,),
            NotificationSwitch(title: "Show Profile"),
            SizedBox(height: 12.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationSwitch(title: "All Message"),
            SizedBox(height: 20.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationSwitch(title: "Message Nudges"),
            SizedBox(height: 20.h,),
            Divider(
              color: Color(0xffD1D5DB),
              height: 20.h,
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),

          ],
        ),
      ),
    );
  }
}


