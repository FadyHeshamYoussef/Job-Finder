import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/button_app.dart';
import '../../core/logic/helper_method.dart';
import '../home/pages/applied.dart';
import '../setup_screen/view.dart';

class AppliedJobe3View extends StatelessWidget {
  const AppliedJobe3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 23.w, end: 23.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Spectrum Logo.png",
                      width: 48.w,
                      height: 48.h,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(height: 12.h,),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "UI/UX Designer",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111827)),
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Spectrum • Jakarta, Indonesia ",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff111827)),
                      ),
                    ),
                    SizedBox(height: 32.h,),
                  ],
                ),

                SizedBox(
                  height: 11.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/images/tick-circle.svg",
                          width: 44.w,
                          height: 44.h,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text("Biodata",
                            style: TextStyle(
                              color: const Color(0xff3366FF),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SFPRODISPLAYMEDIUM",
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    SvgPicture.asset("assets/icons/Line 1.svg",color: Color(0xff3366FF),width: 24.w),

                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/images/tick-circle.svg",
                          width: 44.w,
                          height: 44.h,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text("Type of work",
                            style: TextStyle(
                              color: const Color(0xff111827),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SFPRODISPLAYMEDIUM",
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    SvgPicture.asset("assets/icons/Line 1.svg",color: Color(0xff3366FF),width: 24.w),

                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0Xff3366FF),
                              width: 2,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Color(0xff3366FF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text("Upload portfolio",
                            style: TextStyle(
                              color: const Color(0xff3366FF),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SFPRODISPLAYMEDIUM",
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Upload portfolio",
                  style: TextStyle(
                    color: const Color(0xff111827),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SFPRODISPLAYMEDIUM",
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text("Fill in your bio data correctly",
                    style: TextStyle(
                      fontFamily: "SFPRODISPLAYREGULAR",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: const Color(0xff6B7280),
                    )),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  children: [
                    Text("Upload CV", style: TextStyle(
                      fontFamily: "SFPRODISPLAYMEDIUM",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: const Color(0xff111827),
                    )),
                    Text("*",style: TextStyle(
                      fontFamily: "SFPRODISPLAYMEDIUM",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: const Color(0xffFF472B),
                    )),
                  ],
                ),
                SizedBox(
                  height: 106.h,
                ),
                SizedBox(
                  height: 47.h,
                ),
                ButtonApp(text: "Submit",color: Color(0xff3366FF),fontFamily:" " ,OnClick: (){navigateTo(context, AppliedView(),);}),

              ],
            ),
          ),
        ],
      ),
    );
  }
}