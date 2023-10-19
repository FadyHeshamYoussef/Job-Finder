import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MessageContainerFilter extends StatelessWidget {
  final String text,svgImage;
  const MessageContainerFilter({super.key, required this.text, required this.svgImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:49.h,
      width:327.w ,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffD1D5DB),
        ),
        borderRadius:
        BorderRadiusDirectional.circular(100.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.all(14),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff374151),
              ),
            ),
            SizedBox(width:210.w ,),
            GestureDetector(
              onTap: (){},
              child: SvgPicture.asset(
                svgImage,
                width: 16.h,
                height: 16.h,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
