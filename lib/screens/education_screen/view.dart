import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import 'package:job_finder/screens/home/pages/home.dart';

import '../../core/design/button_app.dart';
import '../../core/design/education_container.dart';
import '../complete_screen/view.dart';

class EducationScreenView extends StatelessWidget {
  EducationScreenView({super.key});

  final universityController = TextEditingController();
  final titleController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Education",
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 32.h,),
              Stack(
                children:[
                  Container(
                    height:484.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD1D5DB),),
                      borderRadius: BorderRadiusDirectional.circular(12.r),
                    ),

                  ),
                  Column(
                    children: [
                      EducationPage(
                        title: "University *",
                        textEditing: universityController,
                      ),
                      EducationPage(
                        title: "Title",
                        textEditing: titleController,
                      ),
                      EducationPageSvg(title: "Start Year",),
                      EducationPageSvg(title: "End Year",),
                      ButtonApp(
                        color:Color(0xff3366FF) ,
                        text: "Save",
                        fontFamily:"SFProDisplayLRegular" ,
                        OnClick: (){
                          navigateTo(context,CompleteScreenView(),);
                        },

                      ),
                    ],
                  ),
                ],

              ),
              SizedBox(height:24.h ,),
              Container(
                height:99.h,
                width:329.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadiusDirectional.circular(8.r),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 12,end:12,top: 27,bottom: 27),
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.grey.shade100,
                        backgroundImage: AssetImage("assets/images/Logo.png"),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The University of Arizona",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111827),
                          ),
                        ),
                        SizedBox(height: 4.h,),
                        Text(
                          "Bachelor of Art and Design\n2012 - 2015",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6B7280),
                          ),
                        ),

                      ],
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: SvgPicture.asset(
                        "assets/icons/edit-2.svg",
                        width: 24.h,
                        height: 24.h,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
