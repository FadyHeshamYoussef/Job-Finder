import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContainerHelp extends StatelessWidget {
  final String svgImage,text;
  const ContainerHelp({super.key, required this.svgImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:53.h,
      width: 327.w,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffD1D5DB)),
        borderRadius: BorderRadiusDirectional.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start:12 ,end:12 ,),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start:12 ,end:12 ,top: 12,bottom:16 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp, fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  svgImage,
                  width: 20.h,
                  height: 20.h,
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
