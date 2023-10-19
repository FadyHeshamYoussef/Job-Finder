import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/design/succesfully_page.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import '../home/view.dart';
class SuccesfullyChangePaswordView extends StatelessWidget {
  const SuccesfullyChangePaswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 152.h,),
          SuccesfullyPage(
              imageAsset: "assets/images/Password Succesfully Ilustration.png",
              headText: "Password changed\nsuccesfully!",
              subText: "Your password has been changed successfully,\nwe will let you know if there are more problems\nwith your account",
          ),
          SizedBox(height: 160.h,),
          ButtonApp(
            text: "Open email app",
            color: Color(0xff3366FF),
            fontFamily: "SFProDisplayLMedium",
            OnClick: (){
              navigateTo(context, HomePageView(),);
            },
          ),
        ],
      ),
    );
  }
}
