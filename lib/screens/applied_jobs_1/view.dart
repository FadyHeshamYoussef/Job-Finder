import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../applied_jobs_2/view.dart';

class AppliedJobsScreen1View extends StatelessWidget {
  const AppliedJobsScreen1View({super.key});

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
        title:
        Text("Apply Job",style: TextStyle(color: const Color(0xff111827),fontSize: 20.sp,fontFamily: "SFPRODISPLAYMEDIUM",fontWeight: FontWeight.w500),),
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 23.w, end: 23.w),
          child: ListView(
            physics:  const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 11.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset("assets/images/tick-circle.svg",width: 44.w,height: 44.h,),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                          "Biodata",style: TextStyle(color: const Color(0xff3366FF),fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: "SFPRODISPLAYMEDIUM")
                      )
                    ],
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  SvgPicture.asset("assets/icons/Line 1.svg",color: const Color(0xffD1D5DB),width: 24.w),
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
                            color: const Color(0xff9CA3AF),
                            width: 2, // Border width
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "2",
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
                      Text("Type of work",style: TextStyle(color: const Color(0xff111827),fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: "SFPRODISPLAYMEDIUM")),
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
                            color: const Color(0XFF9CA3AF),
                            width: 2, // Border width
                          ),
                        ),
                        child: const Center(
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
                      Text("Upload portfolio",style: TextStyle(color: const Color(0xff111827),fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily: "SFPRODISPLAYMEDIUM")),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Biodata",
                style: TextStyle(
                    color: const Color(0xff111827),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SFPRODISPLAYMEDIUM"),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text("Fill in your bio data correctly",
                  style: TextStyle(
                      fontFamily: "SFPRODISPLAYREGULAR",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: const Color(0xff6B7280))),
              SizedBox(
                height: 28.h,
              ),
              buildTextField(labelText: "Full Name",isRequired: true,prefixIcon: "assets/images/profile.svg"),
              SizedBox(height: 20.h,),
              buildTextField(labelText: "Email",isRequired: true,prefixIcon: "assets/images/smslogin.svg"),
              SizedBox(height: 20.h,),
              IntlPhoneField(
                dropdownIconPosition: IconPosition.trailing,
                decoration: const InputDecoration(
                  labelText: '',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'EG',
                onChanged: (phone) {
                },
              ),
              SizedBox(height: 30.h,),
              ButtonApp(text: "Next",color: Color(0xff3366FF),fontFamily:" " ,OnClick: (){navigateTo(context, AppliedJobsScreen2View(),);}),

            ],
          ),
        ),
      ),
    );
  }
  Widget buildTextField({
    required String prefixIcon,
    String labelText = '',
    bool isRequired = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(labelText,style: TextStyle(color: const Color(0xff111827), fontWeight: FontWeight.w400,fontSize: 16.sp,fontFamily: "SFPRODISPLAYREGULAR"),),
            const Text("*",style: TextStyle(color: Color(0xffFF472B)),),
          ],
        ),
        SizedBox(height: 8.h,),
        SizedBox(
          width: 327.w,
          height: 56.h,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              // ignore: unnecessary_null_comparison
              prefixIcon: prefixIcon != null ? SvgPicture.asset(prefixIcon,width: 20.w,height: 20.h,fit: BoxFit.scaleDown,) : null,
              suffixText: isRequired ? '*' : '',
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPhoneNumberField({required String labeltext}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(labeltext,style: TextStyle(color: const Color(0xff111827), fontWeight: FontWeight.w400,fontSize: 16.sp,fontFamily: "SFPRODISPLAYREGULAR"),),
            const Text("*",style: TextStyle(color: Color(0xffFF472B)),),
          ],
        ),
        SizedBox(height: 8.h,),
        SizedBox(
          width: 327.w,
          height: 56.h,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              prefixIcon:Row(
                children: [
                  Container(
                    width: 24.w,
                    height: 18.h,
                    color: Colors.pink,
                  ),
                  SizedBox(width: 7.97.w,),
                  GestureDetector(child: SvgPicture.asset("assets/images/arrow-down-1.svg",width: 15.66.w,height: 16.h,)),
                  SizedBox(width: 16.36.w,),
                  SvgPicture.asset("assets/images/Line 29.svg"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


