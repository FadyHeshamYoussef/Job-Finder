import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/design/pro_container_view.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../applied_jobe_1/view.dart';



class ActiveScreenView extends StatefulWidget {
  const ActiveScreenView({super.key});

  @override
  State<ActiveScreenView> createState() => _ActiveScreenViewState();
}

class _ActiveScreenViewState extends State<ActiveScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ProContainerView(title: "3 Jobs"),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24,end: 24),
              child: ListView.separated(shrinkWrap: true,itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  navigateTo(context, AppliedJobe1View(),);
                },
                child: Container(
                  width: 327.w,
                  height: 186.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(8.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Spectrum Logo.png",width:40.h ,height:40.h ,fit: BoxFit.scaleDown),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "UI/UX Designer",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                              SizedBox(height: 4.h,),
                              Text(
                                "Spectrum • Jakarta, Indonesia ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff111827),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            "assets/icons/saved.svg",
                            height: 24.w,
                            width: 24.h,
                            fit: BoxFit.scaleDown,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 72.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Color(0xffD6E4FF),
                            ),
                            child: Center(child: Text("Fulltime",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),)),
                          ),
                          Container(
                            width: 72.w,
                            height: 26.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Color(0xffD6E4FF),
                            ),
                            child: Center(child: Text("Remote",style: TextStyle(fontSize: 12,fontFamily: "SF",fontWeight: FontWeight.w400,color: Color(0xff3366FF)),)),
                          ),
                          Text(
                            "Posted 2 days ago",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff374151)),
                          ),
                        ],
                      ),
                      Container(
                        height: 75.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffD1D5DB),),
                          borderRadius: BorderRadiusDirectional.circular(8.r),
                        ),
                        child: Padding(
                          padding:  EdgeInsetsDirectional.only(start:10 ,end:10 ,bottom:12 ,top:12 ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset("assets/images/tick-circle.svg",width: 24.h,height: 24.h,),
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
                                    width: 24.h,
                                    height: 24.h,
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
                                    width: 24.w,
                                    height: 24.h,
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
                        ),
                      ),
                    ],
                  ),


                ),
              ), separatorBuilder:(context, index) => Divider(indent: 24 ,endIndent:24 ,color:Color(0xffE5E7EB),thickness: 1), itemCount: 3),
            )

          ],
        ),
      ),
    );
  }
}
