import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/design/succesfully_page.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../creat_password/view.dart';

class CheckEmailView extends StatelessWidget {
  const CheckEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 152.h,),
          SuccesfullyPage(
              imageAsset: "assets/images/Email Ilustration.png",
              subText: "We have sent a reset password to your email\naddress",
              headText: "Check your Email",
          ),
          SizedBox(height: 160.h,),
          ButtonApp(
            text: "Open email app",
            color: Color(0xff3366FF),
            fontFamily: "SF Pro Display",
            OnClick: (){
              navigateTo(context, CreatePasswordView(),);
            },
          ),
        ],
      ),
    );
  }
}
