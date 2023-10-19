import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/core/design/Text_input.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../change_password_succesfully/view.dart';

class CreatePasswordView extends StatefulWidget {

  const CreatePasswordView({super.key});

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  final formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change password",
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
        child: Form(
          key: formkey,
          child: Padding(
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 39.h,),
                Text(
                  "Create new password",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28.sp,
                      fontFamily: "SF Pro Display"),
                ),
                SizedBox(height: 8.h,),
                Text(
                  "Set your new password so you can login and\nacces Jobsque",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      fontFamily: "SFProDisplayLRegular"),
                ),
                SizedBox(height: 40.h,),
                TextInputObs(
                    label: "Create New Password",
                    keyType: TextInputType.visiblePassword,
                    textController: passwordController,
                    svgImage: "assets/icons/lock.svg",
                    lastSvgImage: "assets/icons/eye-slash.svg",

                ),
                SizedBox(height: 12.h,),
                Text(
                  "Password must be at least 8 characters",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "SFProDisplayLRegular",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9CA3AF)),
                ),
                SizedBox(height: 24.h,),
                TextInputObs(
                  label: "Repeat New Password",
                  keyType: TextInputType.visiblePassword,
                  textController: repeatPasswordController,
                  svgImage: "assets/icons/lock.svg",
                  lastSvgImage: "assets/icons/eye-slash.svg",

                ),
                SizedBox(height: 12.h,),
                Text(
                  "Both password must match",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "SFProDisplayLRegular",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9CA3AF)),
                ),
                SizedBox(height: 140.h,),
                ButtonApp(
                    color: Color(0xff3366FF),
                    fontFamily: "SF Pro Display",
                    text: "Reset password",
                  OnClick: (){
                      navigateTo(context, SuccesfullyChangePaswordView(),);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
