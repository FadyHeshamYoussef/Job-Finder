import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/button_app.dart';
import '../../core/logic/helper_method.dart';
import '../applied_jobe_3/view.dart';
import '../applied_jobs_3/view.dart';

class AppliedJobe2View extends StatefulWidget {
  const AppliedJobe2View({super.key});

  @override
  State<AppliedJobe2View> createState() => _AppliedJobe2ViewState();
}

class _AppliedJobe2ViewState extends State<AppliedJobe2View> {
  List jobtitle = [
    "Senior UX Designer",
    "Senior UI Designer",
    "Graphic Designer",
    "Front-End Developer"
  ];
  List subtitle = [
    "CV.pdf . Portfolio.pdf",
    "CV.pdf . Portfolio.pdf",
    "CV.pdf . Portfolio.pdf",
    "CV.pdf . Portfolio.pdf"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
        title:
        Text("Apply Job",style: TextStyle(color: Color(0xff111827),fontSize: 20.sp,fontFamily: "SFPRODISPLAYMEDIUM",fontWeight: FontWeight.w500),),

      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/tick-circle.svg",width: 44.w,height: 44.h,),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                          "Biodata",style: TextStyle(color: Color(0xff3366FF),fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: "SFPRODISPLAYMEDIUM")
                      )
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
                            color: Color(0xff3366FF),
                            width: 2, // Border width
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "2",
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
                      Text(
                        "Type of work",
                        style: TextStyle(
                            color: Color(0xff3366FF),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "SFPRODISPLAYMEDIUM"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  SvgPicture.asset("assets/icons/Line 1.svg",width: 24.w),
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
                            color: Color(0XFF9CA3AF),
                            width: 2, // Border width
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text("Upload portfolio",style: TextStyle(color: Color(0xff111827),fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: "SFPRODISPLAYMEDIUM")),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Type of work",
                style: TextStyle(
                  color: Color(0xff111827),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SFPRODISPLAYMEDIUM",
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Fill in your bio data correctly",
                style: TextStyle(
                  fontFamily: "SFPRODISPLAYREGULAR",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xff6B7280),
                ),
              ),
              SizedBox(height: 28.h,),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: jobtitle.length,
                separatorBuilder: (context, index) => SizedBox(height: 5.h),
                itemBuilder: (context, index) {
                  return TypeWork(
                    jobTitle: jobtitle[index],
                    subtitle: subtitle[index],
                  );
                },
              ),
              ButtonApp(text: "Next",color: Color(0xff3366FF),fontFamily:" " ,OnClick: (){navigateTo(context, AppliedJobe3View(),);}),

            ],
          ),
        ),
      ),
    );
  }
}

class TypeWork extends StatefulWidget {
  final String subtitle;
  final String jobTitle;

  const TypeWork({Key? key, required this.subtitle, required this.jobTitle})
      : super(key: key);

  @override
  _TypeWorkState createState() => _TypeWorkState();
}

class _TypeWorkState extends State<TypeWork> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 327.w,
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: isSelected ? const Color(0xffE5F0FF) : const Color(0xffFAFAFA),
          border: Border.all(
            color: isSelected ? const Color(0xff3366FF) : const Color(0xffD1D5DB),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.jobTitle,
                    style: TextStyle(
                      color: const Color(0xff111827),
                      fontSize: 16.sp,
                      fontFamily: "assets/fonts/SFPRODISPLAYMEDIUM",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      color: const Color(0xff6B7280),
                      fontSize: 14.sp,
                      fontFamily: "assets/fonts/SFPRODISPLAYREGULAR",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                width: 24.w,
                height: 24.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360.r),
                  border: Border.all(color: isSelected?Color(0xff3366FF):Color(0xffACAEBE),),
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 5.r,
                    backgroundColor: isSelected?Color(0xff3366FF):Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}