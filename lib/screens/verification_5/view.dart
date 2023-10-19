import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../login_security_screen/view.dart';

class OtpScreenView extends StatefulWidget {
  const OtpScreenView({super.key});

  @override
  State<OtpScreenView> createState() => _OtpScreenViewState();
}
class _OtpScreenViewState extends State<OtpScreenView> {
  final codeController = TextEditingController();
  bool isFailed = false;
  bool isLoading = false;
  otp()async{
    isLoading = true;
    setState(() {});
    try{
      final response = await Dio().post("https://project2.amit-learning.com/api/auth/otp",
          data: {
            "code": codeController.text,
          },
          options: Options(
              headers: {
                "Authorization":"Bearer 1056|dQSuomUnfxk4YYftAbu3jYK4HTMydVjSR7TDEgFz",
              }
          )
      );
      print(response.data);
    }on DioException {
      isFailed = true;
    }

    isLoading = false;
    setState(() {
    });
    navigateTo(context, LoginSecurityView());
  }
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 36.h,),
            Text(
              "Enter the 4 digit code",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827)),
            ),
            SizedBox(height: 12.h,),
            Text(
              "Please confirm your account by entering the authorization code sen to ****-****-7234",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827)),
            ),
            SizedBox(height: 20.h,),
            OtpTextField(
              borderRadius: BorderRadius.circular(8.r),
              keyboardType: TextInputType.number,
              numberOfFields: 4,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                code =  codeController.text;
              },
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            SizedBox(height: 16.h,),
            Row(
              children: [
                Text("Resend code", style: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
                Text("42s", style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3366FF),
                ),
                ),
              ],
            ),
            SizedBox(height: 280.h,),
            isLoading?Center(child: CircularProgressIndicator(),): ButtonApp(
              text: "Verify",
              color: Color(0xff3366FF),
              fontFamily: "SF Pro Display",
              OnClick: () {
                otp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
