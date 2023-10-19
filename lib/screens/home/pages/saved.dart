import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/design/applied_container.dart';
import 'package:job_finder/core/design/list_tile.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../applied_jobe_1/view.dart';
import '../../job_detail/view.dart';
import '../../nothing_saved/view.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff111827),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color(0xff111827),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
      children: [
      SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height:36.h,
            width: 375.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF4F4F5),),
              color: Color(0xffE5E7EB),
              borderRadius: BorderRadiusDirectional.circular(1.r),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "12 Job Saved",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7280),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h,),
          ListContainer(
            image: "assets/images/Twitter Logo.png",
            headText: "Senior UI Designer",
            subText: "Twitter • Jakarta, Indonesia",
            sVgImage: "assets/icons/more.svg",
            onClick: (){
              navigateTo(context, JobDetailsView(),);
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 24,top: 16),
            child: Row(
              children: [
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
                SizedBox(width: 79.w,),
                SvgPicture.asset(
                  "assets/icons/clock.svg",
                  width: 12.h,
                  height: 12.h,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  "Be an early applicant",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          ListContainer(
            image: "assets/images/Spectrum Logo.png",
            headText: "UI Designer",
            subText: "Spectrum • Jakarta, Indonesia ",
            sVgImage: "assets/icons/more.svg",
            onClick: (){
              navigateTo(context, JobDetailsView(),);
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 24,top: 16),
            child: Row(
              children: [
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
                SizedBox(width: 79.w,),
                SvgPicture.asset(
                  "assets/icons/clock.svg",
                  width: 12.h,
                  height: 12.h,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  "Be an early applicant",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          ListContainer(
            image: "assets/images/VK Logo.png",
            headText: "Senior UI Designer",
            subText: "VK • Yogyakarta, Indonesia",
            sVgImage: "assets/icons/more.svg",
            onClick: (){
              navigateTo(context, JobDetailsView(),);
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 24,top: 16),
            child: Row(
              children: [
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
                SizedBox(width: 79.w,),
                SvgPicture.asset(
                  "assets/icons/clock.svg",
                  width: 12.h,
                  height: 12.h,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  "Be an early applicant",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          ListContainer(
            image: "assets/images/Discord Logo.png",
            headText: "Senior UX Designer",
            subText: "Discord • Jakarta, Indonesia ",
            sVgImage: "assets/icons/more.svg",
            onClick: (){
              navigateTo(context, JobDetailsView(),);
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 24,top: 16),
            child: Row(
              children: [
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
                SizedBox(width: 79.w,),
                SvgPicture.asset(
                  "assets/icons/clock.svg",
                  width: 12.h,
                  height: 12.h,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  "Be an early applicant",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          ListContainer(
            image: "assets/images/Invision Logo.png",
            headText: "Junior UI Designer",
            subText: "Invision • Jakarta, Indonesia ",
            sVgImage: "assets/icons/more.svg",
            onClick: (){
              navigateTo(context, JobDetailsView(),);
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 24,top: 16),
            child: Row(
              children: [
                Text(
                  "Posted 2 days ago",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
                SizedBox(width: 79.w,),
                SvgPicture.asset(
                  "assets/icons/clock.svg",
                  width: 12.h,
                  height: 12.h,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  "Be an early applicant",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff374151),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h,),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),

        ],
      ),
    ),
        DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.1,
          maxChildSize: 0.8,
          builder: (context, scrollController) => SingleChildScrollView(
            controller: scrollController,
            child: SizedBox(
            height: 5000.h,
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(16.r),
                child: Container(
                color: Color(0xffFFFFFF),
                child: Column(
                  children: [
                    SizedBox(height: 12.h,),
                    Container(
                      width: 60.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff1F2937),),
                          borderRadius: BorderRadiusDirectional.circular(100.r),
                          color: Color(0xff1F2937),
                        ),

                    ),
                    SizedBox(height: 24.h,),
                      AppliedDragContainer(
                        sVgImage: "assets/icons/export_black.svg",
                        text: "Apply Job",
                        lastSvgImage: "assets/icons/arrow-right.svg",
                        onClick: (){
                          navigateTo(context, AppliedJobe1View(),);
                        },
                      ),
                    SizedBox(height: 24.h,),
                    AppliedDragContainer(
                      sVgImage: "assets/icons/directbox-notif.svg",
                      text: "Share via...",
                      lastSvgImage: "assets/icons/arrow-right.svg",
                      onClick: (){
                        navigateTo(context, NothingSavedScreenView(),);
                      },
                    ),
                    SizedBox(height: 24.h,),
                    AppliedDragContainer(
                      sVgImage: "assets/icons/saved.svg",
                      text: "Cancel save",
                      lastSvgImage: "assets/icons/arrow-right.svg",
                      onClick: (){
                        navigateTo(context, NothingSavedScreenView(),);
                      },
                    ),
                    ],
                ),
        ),
              ),
            ),
          ),
        ),
    ]
    ),
    );



  }
}