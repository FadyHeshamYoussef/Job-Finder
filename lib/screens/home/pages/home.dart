import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../../core/design/home_container.dart';
import '../../job_detail/view.dart';
import '../../notification_screen/view.dart';
import '../../search_screen/view.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsetsDirectional.only(start: 24,end: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Rafif Dian👋",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          "Create a better future for yourself here",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B7280),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5.w,),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, NotificationScreenView(),);
                      },
                      child: Container(
                        height:48.h ,
                        width: 48.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffD1D5DB)),
                          borderRadius: BorderRadiusDirectional.circular(100.r),
                        ),
                        child: SvgPicture.asset("assets/icons/notofication.svg",height:24.h ,width:24.w ,fit:BoxFit.scaleDown ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28.h,),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, SearchScreenView(),);
                  },
                  child: Container(
                    width: 327.w,
                    height:48.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD1D5DB),),
                      borderRadius: BorderRadiusDirectional.circular(100.r),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:EdgeInsetsDirectional.only(start: 12,end: 12,top:14 ,bottom:14 ),
                          child: SvgPicture.asset(
                            "assets/icons/search-normal.svg",
                            height: 20.h,
                            width: 20.h,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Text("Search....",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color:Color(0xff9CA3AF),),),
                      ],
                    ),
                  ),
                ),
                // TextFormField(
                //   decoration: InputDecoration(
                //     hintText: "Search....",
                //     hintStyle: TextStyle(
                //       fontSize: 14.sp,
                //       fontWeight: FontWeight.w400,
                //       color: Color(0xff9CA3AF),
                //     ),
                //     prefixIcon: SvgPicture.asset(
                //         "assets/icons/search-normal.svg",
                //         height: 20.h,
                //         width: 20.w,
                //         fit: BoxFit.scaleDown),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(100.r),
                //     ),
                //   ),
                //   controller: searchController,
                // ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Suggested Job",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width:118.w ,),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 183.h,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 16.w),
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index) =>  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 183.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: Color(0xff091A7A),
                            borderRadius: BorderRadiusDirectional.circular(12.r),
                          ),
                          child: Padding(
                            padding:  EdgeInsetsDirectional.symmetric(vertical: 16,horizontal: 18),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadiusDirectional.circular(8.r),
                                      ),
                                      child: Image.asset("assets/images/zoom.png",width: 32.w,height:32.h ,fit:BoxFit.scaleDown),
                                    ),
                                    SizedBox(width: 16.w,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Product Designer",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                        SizedBox(height: 4.h,),
                                        Text(
                                          "Zoom • United States",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff9CA3AF),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 30.w,),
                                    SvgPicture.asset(
                                      "assets/icons/saved.svg",
                                      width: 24.h,
                                      height: 24.h,
                                      fit: BoxFit.scaleDown,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h,),
                                Row(
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "Fulltime",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: (Color(0xffFFFFFF)),
                                          ),
                                        ),
                                      ),
                                      height: 30.h,
                                      width: 87.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff2D2A7B),
                                        borderRadius: BorderRadiusDirectional.circular(100.r),
                                      ),
                                    ),
                                    SizedBox(width: 3.w,),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "Remote",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: (Color(0xffFFFFFF)),
                                          ),
                                        ),
                                      ),
                                      height: 30.h,
                                      width: 87.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff2D2A7B),
                                        borderRadius: BorderRadiusDirectional.circular(100.r),
                                      ),
                                    ),
                                    SizedBox(width: 3.w,),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "Design",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: (Color(0xffFFFFFF)),
                                          ),
                                        ),
                                      ),
                                      height: 30.h,
                                      width: 87.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xff2D2A7B),
                                        borderRadius: BorderRadiusDirectional.circular(100.r),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h,),
                                Row(
                                  children: [
                                    Text(
                                      "\$12K-15K",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      "/Month",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff6B7280),
                                      ),
                                    ),
                                    SizedBox(width: 40.w,),
                                    FilledButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Apply now",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ) ,
                      ],
                    ),

                    itemCount: 2,
                  ),
                ),
                SizedBox(height: 24.h,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Recent Job",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width:149.w ,),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, JobDetailsView(),);
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                HomeContainer(
                  image: "assets/images/Twitter Logo.png",
                  firstTEXT: "Senior UI Designer",
                  secondText: "Twitter • Jakarta, Indonesia ",
                ),
                Row(
                  children: [
                    Container(
                      width:73.w ,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Fulltime",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      width:73.w ,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Remote",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      width:73.w ,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Senior",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Text(
                      "\$15K",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500,color: Color(0xff2E8E18)),
                    ),
                    Text(
                      "/Month",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w500,color: Color(0xff6B7280)),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Container(width: double.infinity,height:2.h,color: Color(0xffE5E7EB),),
                HomeContainer(
                  image: "assets/images/Discord Logo.png",
                  firstTEXT: "Senior UX Designer",
                  secondText: "Twitter • Jakarta, Indonesia ",
                ),
                Row(
                  children: [
                    Container(
                      width:73.w ,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Fulltime",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      width:73.w ,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Remote",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      width:73.w ,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Senior",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3366FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Text(
                      "\$15K",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500,color: Color(0xff2E8E18)),
                    ),
                    Text(
                      "/Month",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w500,color: Color(0xff6B7280)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
