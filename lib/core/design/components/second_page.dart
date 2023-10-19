import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../button_app.dart';
import 'container_applyjob.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedValue =0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(start:24 ,end:18 ,top: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Type of work",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827),
              ),
            ),
            SizedBox(height: 4.h,),
            Text(
              "Fill in your bio data correctly",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
            SizedBox(height: 28.h,),
            ContainerAppliedJob(
              text: "Senior UX Designer",
              headText: "CV.pdf",
              pointText: ".",
              subText: "Portfolio.pdf",
              value: 1,


            ),
            SizedBox(height: 26.h,),
            ContainerAppliedJob(
                text: "Senior UI Designer",
                headText: "CV.pdf",
                pointText: ".",
                subText: "Portfolio.pdf",
              value: 2,

            ),
            SizedBox(height: 26.h,),
            ContainerAppliedJob(
              text: "Graphik Designer",
              headText: "CV.pdf",
              pointText: ".",
              subText: "Portfolio.pdf",
              value: 2,

            ),
            SizedBox(height: 26.h,),
            ContainerAppliedJob(
              text: "Front-End Developer",
              headText: "CV.pdf",
              pointText: ".",
              subText: "Portfolio.pdf",
              value: 2,

            ),

            // SizedBox(height: 16.h,),
            // Container(
            //   height:81.h ,
            //   width:327.w,
            //   decoration: BoxDecoration(
            //     border: Border.all(color:Color(0xffD1D5DB)),
            //     borderRadius: BorderRadiusDirectional.circular(8.r),
            //   ),
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding:EdgeInsetsDirectional.only(start: 16,top: 16,bottom: 16,end:100),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               "Senior UX Designer",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16.sp,
            //                 color: Color(0xff111827),
            //               ),
            //             ),
            //             SizedBox(height: 8.h,),
            //             Text(
            //               "Portfolio.pdf",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16.sp,
            //                 color: Color(0xff6B7280),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Radio(
            //         value: 2,
            //         groupValue: selectedValue,
            //         onChanged: (value) {
            //           selectedValue = value!;
            //           setState(() {});
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 16.h,),
            // Container(
            //   height:81.h ,
            //   width:327.w,
            //   decoration: BoxDecoration(
            //     border: Border.all(color:Color(0xffD1D5DB)),
            //     borderRadius: BorderRadiusDirectional.circular(8.r),
            //   ),
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding:EdgeInsetsDirectional.only(start: 16,top: 16,bottom: 16,end:100),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               "Senior UX Designer",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16.sp,
            //                 color: Color(0xff111827),
            //               ),
            //             ),
            //             SizedBox(height: 8.h,),
            //             Text(
            //               "Portfolio.pdf",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16.sp,
            //                 color: Color(0xff6B7280),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Radio(
            //         value: 3,
            //         groupValue: selectedValue,
            //         onChanged: (value) {
            //           selectedValue = value!;
            //           setState(() {});
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 16.h,),
            // Container(
            //   height:81.h ,
            //   width:327.w,
            //   decoration: BoxDecoration(
            //     border: Border.all(color:Color(0xffD1D5DB)),
            //     borderRadius: BorderRadiusDirectional.circular(8.r),
            //   ),
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding:EdgeInsetsDirectional.only(start: 16,top: 16,bottom: 16,end:100),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               "Senior UX Designer",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16.sp,
            //                 color: Color(0xff111827),
            //               ),
            //             ),
            //             SizedBox(height: 8.h,),
            //             Text(
            //               "Portfolio.pdf",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16.sp,
            //                 color: Color(0xff6B7280),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Radio(
            //         value: 4,
            //         groupValue: selectedValue,
            //         onChanged: (value) {
            //           selectedValue = value!;
            //           setState(() {});
            //         },
            //       ),
            //     ],
            //   ),
            // ),


          ],
        ),
      ),
    );
  }
}




