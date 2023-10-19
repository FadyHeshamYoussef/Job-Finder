import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppliedDragContainer extends StatelessWidget {
  final String sVgImage,text,lastSvgImage;
  var onClick;
  AppliedDragContainer({super.key, required this.sVgImage, required this.text, required this.lastSvgImage,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 49.h,
        width: 327.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffD1D5DB)),
          borderRadius: BorderRadiusDirectional.circular(100.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 14,end: 14,top: 14.5,bottom: 14.5),
              child: SvgPicture.asset(
                sVgImage,
                height: 20.h,
                width: 20.h,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 160.w,),
            GestureDetector(
              onTap: (){
                onClick();
              },
              child: SvgPicture.asset(
                lastSvgImage,
                height: 16.h,
                width: 16.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
