import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/core/design/Text_input.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../check_screen/view.dart';
import '../login_screen/view.dart';

class ForgetPasswordView extends StatefulWidget {

  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24),
            child: Row(
              children: [
                Text(
                  "J",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff111827),
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/splash_icons_text.svg",
                  height: 14.h,
                  width: 14.h,
                ),
                Text(
                  "BSQUE",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff111827),
                  ),
                ),
              ],
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xff111827),
        ),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding:  EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Reset Password",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28.sp,
                    fontFamily: "SF Pro Display"),
              ),
              SizedBox(height: 8.h,),
              Text(
                "Enter the email address you used when you\njoined and we’ll send you instructions to reset\nyour password.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    fontFamily: "SFProDisplayLRegular"),
              ),
              SizedBox(height: 40.h,),
              TextInput(
                  svgImage: "assets/icons/sms.svg",
                  textController: emailController,
                  keyType: TextInputType.emailAddress,
                  label: "Enter your email....",
              ),
              SizedBox(height: 240.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "You remember your password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SFProDisplayLMedium",
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  SizedBox(width: 6.w,),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, LoginScreenView(),);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3366FF),
                      ),
                    ),
                  ),
                ],
              ),
              ButtonApp(
                color: Color(0xff3366FF),
                fontFamily: "SF Pro Display",
                text: "Request password reset",
                OnClick: (){
                  if (formkey.currentState!.validate()) {
                    navigateTo(context, CheckEmailView(),);
                  }

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
