import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../../core/design/succesfully_page.dart';
import '../home/view.dart';

class SuccessfullyAppliedScreenView extends StatelessWidget {
  const SuccessfullyAppliedScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff111827),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Apply Job",
          style: TextStyle(
            color: const Color(0xff111827),
            fontSize: 20.sp,
            fontFamily: "SFPRODISPLAYMEDIUM",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ApplySaved(
            image: "assets/images/AppliedJob.png",
            headText: "Your data has been successfully sent",
            subText: "You will get a message from our team, about the announcement of employee acceptance",
          ),
          ButtonApp(text: "Back to home",fontFamily: " ",OnClick:(){navigateTo(context,HomePageView(),);} ,color: Color(0xff3366FF)),
        ],
      ),
    );
  }
}
