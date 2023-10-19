import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationContainerScreen extends StatelessWidget {
  final String image,headText,subText,lastImage,hourText;
  const NotificationContainerScreen({super.key, required this.image, required this.headText, required this.subText, required this.lastImage, required this.hourText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start:24 ,end:11 ,top: 21,bottom:14 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 40.h,
            width: 40.h,
            fit: BoxFit.fill,
          ),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 11,end: 70),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headText,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.h,),
                Text(
                  subText,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            lastImage,
            width: 8.h,
            height: 8.h,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 8.w,),
          Text(
            hourText,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff6B7280),
            ),
          ),
        ],
      ),
    );
  }
}
