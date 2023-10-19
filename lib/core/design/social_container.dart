import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialContainer extends StatelessWidget {
  final String svgImage,text;
  const SocialContainer({super.key, required this.svgImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 46.h,
          width: 154.w,
          child: OutlinedButton(
            onPressed: (){},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      svgImage,
                      width:16.h ,
                      height:16.h,
                      fit: BoxFit.fill
                  ),
                  SizedBox(width: 8.w,),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff363F5E)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
