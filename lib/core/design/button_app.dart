import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ButtonApp extends StatelessWidget {
  final String text,fontFamily;
  final Color color;
  var OnClick;
  ButtonApp({super.key, required this.text,required this.fontFamily,  required this.color, required this.OnClick}) {

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(start:24 ,end:24 ,bottom:25 ,top: 36),
      child: FilledButton(
        onPressed: () {
          OnClick();
        },
        style: FilledButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(327.w, 48.h),
        ),



        child: Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
