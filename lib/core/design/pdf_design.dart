import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PdfContainer extends StatelessWidget {
  final String pdfImage,headText,subText,editImage,closeImage;
  const PdfContainer({super.key, required this.pdfImage, required this.headText, required this.subText, required this.editImage, required this.closeImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width:327.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffD1D5DB),
        ),
        borderRadius: BorderRadiusDirectional.circular(8.r),
      ),
      child: Padding(
        padding:EdgeInsetsDirectional.only(start: 16,top: 16,bottom: 16),
        child: Row(
          children: [
            Image.asset(
              pdfImage,
              height: 40.h,
              width: 40.h,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 8.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  headText,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  subText,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff111827),
                  ),
                ),
              ],
            ),
            SizedBox(width: 90.w),
            SvgPicture.asset(
              editImage,
              width: 24.h,
              height: 24.h,
              fit: BoxFit.scaleDown,
            ),
            SvgPicture.asset(
              closeImage,
              width: 24.h,
              height: 24.h,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
