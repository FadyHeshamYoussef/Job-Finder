import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../button_app.dart';
import '../pdf_design.dart';


class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24,end: 24,top: 32,),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Upload portfolio",
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
            Row(
              children: [
                Text(
                  "Upload CV",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                Text(
                  "*",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF472B),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h,),
            PdfContainer(
              pdfImage: "assets/images/PDF Logo.png",
              headText: "Rafif Dian.CV",
              subText: "CV.pdf 300KB",
              editImage: "assets/icons/edit-2.svg",
              closeImage: "assets/icons/close-circle.svg",
            ),
            SizedBox(height: 20.h,),
            Text(
              "Other File",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827),
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              height: 221.h,
              width:327.w,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff6690FF),),
                color: Color(0xffECF2FF),
                borderRadius: BorderRadiusDirectional.circular(8.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 130,end: 130,top: 16,bottom: 16),
                    child: Container(
                      height: 70.h,
                      width: 70.h,
                      decoration: BoxDecoration(
                        color: Color(0xffD6E4FF),
                        borderRadius: BorderRadiusDirectional.circular(100.r),
                      ),
                      child: Image.asset(
                        "assets/images/document-upload.png",
                        width: 32.h,
                        height: 32.h,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Text(
                    "Upload your other file",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff111827),
                    ),
                  ),
                  SizedBox(height: 8.h,),
                  Text(
                    "Max. file size 10 MB",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280),
                    ),
                  ),
                  // SizedBox(height: 24.h,),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 16,end: 16,top:24,bottom: 20),
                    child: FilledButton(
                      onPressed: () {},
                      child: Row(
                         mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/export.svg",
                            height: 20.h,
                            width: 20.h,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(width: 10.w,),
                          Text(
                            "Add file",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3366FF),
                            ),
                          ),
                        ],
                      ),
                      style: FilledButton.styleFrom(
                        minimumSize: Size(295.w, 40.h),
                        padding: EdgeInsetsDirectional.only(start: 16,end: 16),
                        side: BorderSide(color: Color(0xff6690FF),),
                        backgroundColor: Color(0xffD6E4FF),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}