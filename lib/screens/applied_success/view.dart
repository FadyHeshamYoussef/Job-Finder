import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/succesfully_page.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../home/view.dart';

class AppliedJobSuccessView extends StatelessWidget {
  const AppliedJobSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Apply Job",
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
      body: Column(
        children: [
          Padding(
            padding:EdgeInsetsDirectional.only(start: 10,end:10 ,),
            child: ApplySaved(
              image: "assets/images/AppliedJob.png",
              headText: "Your data has been\nsuccessfully sent",
              subText:
              "You will get a message from our team, about\nthe announcement of employee acceptance",
            ),
          ),
          ButtonApp(
            color: Color(0xff3366FF),
            text: "Back to home",
            fontFamily: "SFProDisplayLRegular",
            OnClick: (){
              navigateTo(context, HomePageView(),);
            },
          ),
        ],
      ),
    );
  }
}
