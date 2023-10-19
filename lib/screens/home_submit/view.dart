import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeSubmitView extends StatefulWidget {
  const HomeSubmitView({super.key});

  @override
  State<HomeSubmitView> createState() => _HomeSubmitViewState();
}

class _HomeSubmitViewState extends State<HomeSubmitView> {
  int currentPage = 0;
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsetsDirectional.only(start: 24,end: 24,top: 16),
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
                      onTap: () {},
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search....",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9CA3AF),
                    ),
                    prefixIcon: SvgPicture.asset(
                        "assets/icons/search-normal.svg",
                        height: 20.h,
                        width: 20.w,
                        fit: BoxFit.scaleDown),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                  controller: searchController,
                ),
                SizedBox(height: 16.h,),
                Container(
                  height: 93.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: Color(0xffD6E4FF),
                    borderRadius: BorderRadiusDirectional.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start:10 ,top:10 ,bottom:10 ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Twitter Logo.png",
                          width: 40.h,
                          height: 40.h,
                          fit: BoxFit.scaleDown,
                        ),
                        SizedBox(width: 12.w,),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Twitter",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 4.h,),
                            Text(
                              "Waiting to be selected by the\ntwitter team",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(width: 4.w,),
                        FilledButton(
                          onPressed: () {
                            if(currentPage==2)
                            {

                            }else{
                              currentPage++;
                              setState(() {});
                            }
                          },
                          child: Text(
                            textAlign: TextAlign.center,
                            currentPage == 0 ? "Submited":"Accepted",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color:currentPage == 0 ? Color(0xff1939B7):Color(0xff1B720F),
                            ),
                          ),
                          style: FilledButton.styleFrom(
                            backgroundColor: currentPage == 0 ? Color(0xffADC8FF):Color(0xffB2ED82),
                            fixedSize: Size(76.w, 30.h),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h,),
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                Container(
                  height:87.h ,
                  width: 327.w,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/Twitter Logo.png",
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(width: 16.w,),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Senior UI Designer",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4.h,),
                          Text(
                            "Twitter • Jakarta, Indonesia ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 66.w,),
                      SvgPicture.asset(
                        "assets/icons/saved.svg",
                        height: 24.h,
                        width: 24.w,
                        fit: BoxFit.fill,
                      ),

                    ],
                  ),
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
                Container(
                  height:87.h ,
                  width: 327.w,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/Twitter Logo.png",
                        height: 40.h,
                        width: 40.w,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(width: 16.w,),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Senior UI Designer",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4.h,),
                          Text(
                            "Twitter • Jakarta, Indonesia ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 66.w,),
                      SvgPicture.asset(
                        "assets/icons/saved.svg",
                        height: 24.h,
                        width: 24.w,
                        fit: BoxFit.fill,
                      ),

                    ],
                  ),
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
