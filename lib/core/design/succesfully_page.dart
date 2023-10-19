import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetUpPage extends StatelessWidget {
  final String imageAsset,headText,subText;
  var onClick;
   SetUpPage  ({super.key, required this.imageAsset, required this.headText, required this.subText,required this.onClick});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:EdgeInsetsDirectional.only(start: 24,end: 327,top: 16),
          child: IconButton(
            onPressed: () {
              onClick();
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        SizedBox(height: 97.h,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageAsset,
              height: 142.h,
              width: 173.w,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24,end: 24,bottom: 8,top: 24),
              child: Text(
                textAlign: TextAlign.center,
                headText,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: " SFProDisplayLReguler"),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              subText,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "SFProDisplayLRegular"),
            )
          ],
        ),
      ],
    );
  }
}







class SuccesfullyPage extends StatelessWidget {
  final String imageAsset,headText,subText;
  const SuccesfullyPage  ({super.key, required this.imageAsset, required this.headText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageAsset,
              height: 142.h,
              width: 173.w,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24,end: 24,bottom: 8,top: 24),
              child: Text(
                textAlign: TextAlign.center,
                headText,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: " SFProDisplayLReguler"),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              subText,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "SFProDisplayLRegular"),
            )
          ],
        ),
      ],
    );
  }
}




class ApplySaved extends StatelessWidget {
  final String image,headText,subText;
  const ApplySaved({super.key, required this.image, required this.headText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 121),
          child: Image.asset(
            image,
            height: 142.h,
            width: 173.sp,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(height: 24.h,),
        Text(
          textAlign: TextAlign.center,
          headText,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff111827),
          ),
        ),
        SizedBox(height: 12.h,),
        Text(
          textAlign: TextAlign.center,
          subText,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff6B7280),
          ),
        ),
        SizedBox(height: 110.h,),
      ],
    );
  }
}
