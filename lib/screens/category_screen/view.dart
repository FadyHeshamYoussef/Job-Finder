import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/design/category_container.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../country_screen/view.dart';


class CategoryWorkView extends StatelessWidget {
  const CategoryWorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsetsDirectional.only(start:20 ,bottom:36 ,end:15 ,top:20 ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "What type of work are you\ninterested in?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                    fontFamily: "SFProDisplayLMedium",
                  ),
                ),
                SizedBox(height: 12.h,),
                Text(
                  "Tell us what you’re interested in so we can customise the app for your needs.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    fontFamily: "SFProDisplayLMedium",
                  ),
                ),
                SizedBox(height: 36.h,),
                Column(
                  children: [
                    Row(
                      children: [
                        CategoryInput(text: "UI/UX Designer",svgImage:"assets/icons/ui_ux_designer.svg" ),
                        SizedBox(width: 10.h,),
                        CategoryInput(text: "Ilustrator Designer",svgImage:"assets/icons/ilustrator_designer.svg" ),
                      ],
                    ),
                        SizedBox(height: 20.h,),
                        Row(
                          children: [
                            CategoryInput(text: "Developer",svgImage:"assets/icons/developer.svg" ),
                            SizedBox(width: 10.h,),
                            CategoryInput(text: "Management",svgImage:"assets/icons/management.svg" ),
                          ],
                        ),
                    SizedBox(height: 20.h,),
                        Row(
                          children: [
                            CategoryInput(text: "Information\nTechnology",svgImage:"assets/icons/information_technology.svg" ),
                            SizedBox(width: 10.h,),
                            CategoryInput(text: "Research and\nAnalytics",svgImage:"assets/icons/Research_and_analytics.svg" ),

                          ],
                        ),
                  ],
                ),
                ButtonApp(
                    text: "Next",
                    fontFamily: "SFProDisplayLMedium",
                    color: Color(0xff3366FF),
                  OnClick: (){
                      navigateTo(context, FlagScreenView());
                  },
                  //onPressed: () => navigateTo(context, FlagScreenView()),
                 //onPressed: () => navigateTo(context,FlagScreenView() ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
