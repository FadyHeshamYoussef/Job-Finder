import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
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
        padding: EdgeInsetsDirectional.only(start: 24,end: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 32.h,),
              Text(
                "Your privacy is important",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 12.sp,),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xff75788D),
                ),
              ),
              SizedBox(height: 12.sp,),
              Text(
                "Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xff75788D),
                ),
              ),
              SizedBox(height: 24.sp,),
              Text(
                "Data controllers and contract partners",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 12.sp,),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. . ",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xff75788D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
