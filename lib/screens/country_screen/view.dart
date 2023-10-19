import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/design/flag_container.dart';

import '../../core/logic/helper_method.dart';
import '../setup_screen/view.dart';


class FlagScreenView extends StatefulWidget {
  const FlagScreenView({super.key});

  @override
  State<FlagScreenView> createState() => _FlagScreenViewState();
}

class _FlagScreenViewState extends State<FlagScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsetsDirectional.only(start: 14,end: 14,top: 20,bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Where are you prefefred\nLocation?",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SFProDisplayLMedium"),
                ),
                SizedBox(height: 12.h,),
                Text(
                  "Let us know, where is the work location you\nwant at this time, so we can adjust it.",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProDisplayLRegular",
                  ),
                ),
            SizedBox(height: 32.h,),
                Stack(
                  children: [
                    Container(
                    width: 327.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F4F5).withOpacity(0.8),
                      borderRadius: BorderRadiusDirectional.circular(100.r),
                    ),
                    ),
                    Column(
                      children: [
                        DefaultTabController(
                          length: 2,
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Color(0xff091A7A),
                              borderRadius: BorderRadiusDirectional.circular(100.r),
                            ),
                            labelColor: Color(0xffFFFFFF),
                            unselectedLabelColor: Color(0xff6B7280),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Work From Office",
                                  style: TextStyle(
                                    fontFamily: "SFProDisplayLMedium",
                                    color: Color(0xff6B7280),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                //text: "Work From Office",
                              ),
                              Tab(
                                child: Text(
                                  "Remote Work",
                                  style: TextStyle(
                                    fontFamily: "SFProDisplayLMedium",
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                // text: "Remote Work",
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],


                  ),
                SizedBox(height: 27.h,),
                Text(
                  "Select the country you want for your job",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff737379),
                  ),
                ),
               // SizedBox(height: 20.h,),
                Column(
                  children: [
                    Row(
                      children: [
                        CategoryFlag(text:"United States" ,image: "assets/images/USA flage.png"),
                        SizedBox(width: 27.w,),
                        CategoryFlag(text:"Malaysia" ,image: "assets/images/Malaysia flag.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CategoryFlag(text:"Singapore" ,image: "assets/images/Singapore flag.png"),
                        SizedBox(width: 12.w,),
                        CategoryFlag(text:"Indonesia" ,image: "assets/images/Indonesia flag.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CategoryFlag(text:"Philiphines" ,image: "assets/images/Philiphines flag.png"),
                        SizedBox(width: 12.w,),
                        CategoryFlag(text:"Polandia" ,image: "assets/images/Polandia flag.png"),
                      ],
                    ),
                    ////////////////////////
                    Row(
                      children: [
                        CategoryFlag(text:"India" ,image: "assets/images/India flag.png"),
                        SizedBox(width: 12.w,),
                        CategoryFlag(text:"Vietnam" ,image: "assets/images/Vietnam flag.png"),
                      ],
                    ),
                    ////////////////////////
                    Row(
                      children: [
                        CategoryFlag(text:"Canada" ,image: "assets/images/Canada flag.png"),
                        SizedBox(width: 12.w,),
                        CategoryFlag(text:"Saudi Arabia" ,image: "assets/images/Saudi Arabia flag.png"),
                      ],
                    ),
                    Row(
                      children: [
                        CategoryFlag(text:"Argentina" ,image: "assets/images/Argentina flag.png"),
                        SizedBox(width: 12.w,),
                        CategoryFlag(text:"Brazil" ,image: "assets/images/Brazil flag.png"),
                      ],
                    ),
                  ],
                ),
                ButtonApp(
                  color: Color(0xff3366FF),
                  fontFamily: "SFProDisplayLMedium",
                  text: "Next",
                  OnClick: (){
                    navigateTo(context, AccountSetUpView());
                  },
                ),
              ],

        ),

            ),
          ),
      ),
    );

  }
}
