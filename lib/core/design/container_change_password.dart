import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContainerChangePassword extends StatelessWidget {
  final String firstImage,lastImage;
  final TextInputType textInputType;
  final TextEditingController textEditing;

  ContainerChangePassword({super.key, required this.firstImage, required this.lastImage, required this.textInputType, required this.textEditing});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: SvgPicture.asset(
          firstImage,
          height: 20.h,
          width: 20.w,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon: SvgPicture.asset(
          lastImage,
          width: 20.h,
          height: 20.h,
          fit: BoxFit.scaleDown,
        ),
      ),
      obscureText: true,
      keyboardType: textInputType,
      controller: textEditing,
    );
  }
}
