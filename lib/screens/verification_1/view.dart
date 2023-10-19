import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../../core/design/general_pro_view.dart';
import '../verification_2/view.dart';

class FirstVerificationScreenView extends StatefulWidget {
  const FirstVerificationScreenView({super.key});

  @override
  State<FirstVerificationScreenView> createState() => _FirstVerificationScreenViewState();
}

class _FirstVerificationScreenViewState extends State<FirstVerificationScreenView> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Two-step verification",
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 36),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height:66.h ,
                    width:327.w ,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD1D5DB)),
                      borderRadius: BorderRadiusDirectional.circular(8.r),
                    ),
                    child: Padding(
                      padding:  EdgeInsetsDirectional.only(start: 14,),
                      child: Row(
                        children: [
                          Text(
                            "Secure your account with\ntwo-step verification",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B7280),
                            ),
                          ),
                          SizedBox(width: 35.w,),
                          Switch(
                            value: isSwitch,
                            onChanged: (value) {
                              isSwitch = value;
                              setState(() {});
                            },)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h,), 
            // GeneralProView(
            //       imageSvg: "assets/icons/lock_blue.svg",
            //       title: "Two-step verification provides additional security by asking for a verification code every time you log in on another device."),
            Container(
              height: 49.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffD6E4FF),
                    radius: 20.r,
                    child: SvgPicture.asset(
                      "assets/icons/lock_blue.svg",
                      height: 20.h,
                      width: 20.w,
                    ) ,
                  ),
                  SizedBox(width:12.w ,),
                  Text("Two-step verification provides additional\nsecurity by asking for a verification code\nevery time you log in on another device."),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 49.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffD6E4FF),
                    radius: 20.r,
                    child: SvgPicture.asset(
                      "assets/icons/external-drive.svg",
                      height: 20.h,
                      width: 20.w,
                    ) ,
                  ),
                  SizedBox(width:12.w ,),
                  Text("Two-step verification provides additional\nsecurity by asking for a verification code\nevery time you log in on another device."),
                ],
              ),
            ),
            SizedBox(height: 250.h,),
            ButtonApp(color:Color(0xff3366FF) ,OnClick:(){navigateTo(context, SecondVerificationScreenView(),);} ,fontFamily:"SFProDisplayLRegular" ,text:"Next" ),

                ],
              ),

            ),
        );
  }
}
