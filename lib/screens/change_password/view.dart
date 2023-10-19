import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import 'package:job_finder/screens/home/pages/home.dart';
import '../../core/design/button_app.dart';
import '../../core/design/container_change_password.dart';
import '../home/pages/profile.dart';
import '../verification_1/view.dart';

class ChangePasswordScreenView extends StatefulWidget {
  const ChangePasswordScreenView({super.key});

  @override
  State<ChangePasswordScreenView> createState() => _ChangePasswordScreenViewState();
}

class _ChangePasswordScreenViewState extends State<ChangePasswordScreenView> {
  final formkey = GlobalKey<FormState>();
  final confirmPassword = TextEditingController();
  final oldPassword = TextEditingController();
  final newPassword = TextEditingController();

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
      body: Form(
        key:formkey ,
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 24,end: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 44.h,),
              Text(
                "Enter your old password",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8.h,),
              ContainerChangePassword(
                  firstImage: "assets/icons/lock.svg",
                  lastImage: "assets/icons/eye-slash.svg",
                  textEditing: oldPassword,
                  textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20.h,),
              Text(
                "Enter your new password",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8.h,),
              ContainerChangePassword(
                firstImage: "assets/icons/lock.svg",
                lastImage: "assets/icons/eye-slash.svg",
                textEditing: newPassword,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20.h,),
              Text(
                "Confirm your new password",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8.h,),
              ContainerChangePassword(
                firstImage: "assets/icons/lock.svg",
                lastImage: "assets/icons/eye-slash.svg",
                textEditing: confirmPassword,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 190.h,),
              ButtonApp(
                color: Color(0xff3366FF),
                text: "Save",
                fontFamily: "SFProDisplayLRegular",
                OnClick: (){
                  navigateTo(context, FirstVerificationScreenView(),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
