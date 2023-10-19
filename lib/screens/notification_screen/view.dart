import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/design/notification_container.dart';

class NotificationScreenView extends StatelessWidget {
  const NotificationScreenView({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         // mainAxisSize: MainAxisSize.min,
         // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height:36.h,
              width: 375.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF4F4F5),),
                color: Color(0xffE5E7EB),
                borderRadius: BorderRadiusDirectional.circular(1.r),
              ),
              child: Padding(
                padding:  EdgeInsetsDirectional.only(start:24 ,end: 139,top:8 ,bottom: 8),
                child: Text(
                  // textAlign: TextAlign.center,
                  "New",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
              ),
            ),
            NotificationContainerScreen(
              image: "assets/images/Dana Logo.png",
              headText: "Dana",
              subText: "Posted new design jobs",
              lastImage: "assets/images/Ellipse 12.png",
              hourText: "10.00AM",
            ),
            Divider(
              color: Color(0xffE5E7EB),
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationContainerScreen(
              image: "assets/images/Shoope Logo.png",
              headText: "Shoope",
              subText: "Posted new design jobs",
              lastImage: "assets/images/Ellipse 12.png",
              hourText: "10.00AM",
            ),
            Divider(
              color: Color(0xffE5E7EB),
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationContainerScreen(
              image: "assets/images/Slack Logo.png",
              headText: "Slack",
              subText: "Posted new design jobs",
              lastImage: "assets/images/Ellipse 12.png",
              hourText: "10.00AM",
            ),
            Divider(
              color: Color(0xffE5E7EB),
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 20.h,),
            NotificationContainerScreen(
              image: "assets/images/Facebook Logo.png",
              headText: "Facebook",
              subText: "Posted new design jobs",
              lastImage: "assets/images/Ellipse 12.png",
              hourText: "10.00AM",
            ),
            Divider(
              color: Color(0xffE5E7EB),
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 39.h,),
            Container(
              height:36.h,
              width: 375.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF4F4F5),),
                color: Color(0xffE5E7EB),
                borderRadius: BorderRadiusDirectional.circular(1.r),
              ),
              child: Padding(
                padding:  EdgeInsetsDirectional.only(start:24 ,end: 139,top:8 ,bottom: 8),
                child: Text(
                  // textAlign: TextAlign.center,
                  "Yesterday",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
              ),
            ),
            SizedBox(height: 21.h,),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: Color(0xffD6E4FF),
                      ),
                      Padding(
                        padding:EdgeInsetsDirectional.only(start: 11,end:8 ,bottom:8 ,top: 11),
                        child: SvgPicture.asset(
                          "assets/icons/sms_blue.svg",
                          height: 24.h,
                          width: 24.w,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email setup successful",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4.h,),
                        Text(
                          "Your email setup was successful with the following\ndetails: Your new email is rafifdianganz@gmail.com.",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4B5563),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4.h,),
                  Image.asset("assets/images/Ellipse 12.png",width: 8.h,height: 8.h,fit: BoxFit.scaleDown,),
                ],
              ),
            ),
            Divider(
              color: Color(0xffE5E7EB),
              thickness: 2,
              endIndent: 24,
              indent: 24,
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundColor: Color(0xffD6E4FF),
                    ),
                    Padding(
                      padding:EdgeInsetsDirectional.only(start: 11,end:8 ,bottom:8 ,top: 11),
                      child: SvgPicture.asset(
                        "assets/icons/search-status.svg",
                        height: 24.h,
                        width: 24.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to Jobsque",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Text(
                        "Hello Rafif Dian Axelingga, thank you for registering\nJobsque. Enjoy the various features that....",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4B5563),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            Divider(
              color: Color(0xffE5E7EB),
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
