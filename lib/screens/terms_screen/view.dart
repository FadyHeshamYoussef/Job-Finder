import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsConditionsView extends StatelessWidget {
  const TermsConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Terms & Conditions",
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
      body: Padding(
        padding:  EdgeInsetsDirectional.only(start: 24,end: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 32.h,),
            Text(
              "Lorem ipsum dolor",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12.h,),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
            SizedBox(height: 17.h,),
            Text(
              "Lorem ipsum dolor",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12.h,),
            Text(
              "Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              width: 327.w,
              height: 144.h,
              decoration: BoxDecoration(
                color: Color(0xffF4F4F5),
                borderRadius: BorderRadiusDirectional.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 14,end: 14,top: 12,bottom: 12),
                child: Text(

                  "Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
