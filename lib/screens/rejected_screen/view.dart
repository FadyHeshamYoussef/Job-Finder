import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/succesfully_page.dart';

class RejectedScreenView extends StatelessWidget {
  const RejectedScreenView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start:20 ,end:20,top: 87),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/Data Ilustration.png",height: 142.h,width:173 ,fit: BoxFit.scaleDown),
            SizedBox(height: 24.h,),
            Text(
              textAlign: TextAlign.center,
                "No applications were rejected",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827))),
            SizedBox(height: 12.h,),
            Text(
              textAlign: TextAlign.center,
              "If there is an application that is rejected by the company it will appear here",
              style: TextStyle(fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6B7280)),)


          ],
        ),


      ),
    );
  }
}


