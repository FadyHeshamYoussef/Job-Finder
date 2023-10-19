import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ListContainer extends StatelessWidget {
  final String image,headText,subText,sVgImage;
  var onClick;
   ListContainer({super.key, required this.image, required this.headText, required this.subText, required this.sVgImage, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        height: 40.h,
        width: 40.h,
        fit: BoxFit.scaleDown,
      ),
      title: Text(
        headText,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),),
      subtitle: Text(
        subText,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xff374151),
        ),
      ),
      trailing: SvgPicture.asset(
        "assets/icons/more.svg",
        height: 24.h,
        width: 24.h,
        fit: BoxFit.scaleDown,
      ),
      onTap: () {
        onClick();
      },

    );
  }
}
