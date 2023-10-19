import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../phone_Screen/view.dart';
class SecondVerificationScreenView extends StatefulWidget {
  const SecondVerificationScreenView({super.key});

  @override
  State<SecondVerificationScreenView> createState() => _SecondVerificationScreenViewState();
}

class _SecondVerificationScreenViewState extends State<SecondVerificationScreenView> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
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
            Text(
              "Select a verification method",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff111827)),
            ),
            SizedBox(height: 8.h,),
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
                    // SizedBox(width: 35.w,),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Telephone number (SMS)",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6B7280),
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h,),
            Text(
              "Note : Turning this feature will sign you out anywhere you’re currently signed in. We will then require you to enter a verification code the first time you sign with a new device or Joby mobile application.",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
            SizedBox(height:180.h,),
            ButtonApp(
                text: "Next",
                color: Color(0xff3366FF),
                fontFamily: "SFProDisplayLRegular",
                OnClick: () {
                  navigateTo(
                    context,
                    PhoneNumberView(),
                  );
                }),
          ],
        ),

      ),
    );
  }
}
