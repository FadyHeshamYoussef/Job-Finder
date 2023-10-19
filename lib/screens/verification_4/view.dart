import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../../core/design/container_change_password.dart';
import '../verification_5/view.dart';

class VerificationFourView extends StatefulWidget {

  const VerificationFourView({super.key});

  @override
  State<VerificationFourView> createState() => _VerificationFourViewState();
}

class _VerificationFourViewState extends State<VerificationFourView> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 36.h,),
            Text(
              "Add phone number",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4.h,),
            Text(
              "We will send a verification code to this number",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
            SizedBox(height: 16.h,),
            IntlPhoneField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              keyboardType: TextInputType.number,
              controller:phoneController,
              initialCountryCode: 'EG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(height: 20.h,),
            Text(
              "Enter your password",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.h,),
            ContainerChangePassword(
              firstImage: "assets/icons/lock.svg",
              lastImage: "assets/icons/eye-slash.svg",
              textEditing: passwordController,
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 250.h,),
            ButtonApp(
              color: Color(0xff3366FF),
              text: "Send Code",
              fontFamily: "SFProDisplayLRegular",
              OnClick: (){
                navigateTo(context,  OtpScreenView(),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
