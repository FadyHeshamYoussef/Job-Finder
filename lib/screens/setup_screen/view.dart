import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/design/succesfully_page.dart';
import '../../core/logic/helper_method.dart';
import '../login_screen/view.dart';

class AccountSetUpView extends StatelessWidget {
  const AccountSetUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SetUpPage(
              imageAsset: "assets/images/Success Account Ilustration.png",
              headText: "Your account has been set up!",
              subText:
              "We have customized feeds according to your\npreferences",
              onClick: (){
                Navigator.pop(context);
              },

            ),
            SizedBox(height: 150.h,),
            ButtonApp(
              color: Color(0xff3366FF),
              text: "Get Started",
              fontFamily: "SFProDisplayLMedium",
              OnClick: (){
                navigateTo(context, LoginScreenView());
              },
              // onPressed: () => LoginScreenView(),
            ),
          ],
        ),
      ),
    );
  }
}
