import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryInput extends StatefulWidget {
  final String svgImage,text;
  const CategoryInput({super.key, required this.svgImage, required this.text});

  @override
  State<CategoryInput> createState() => _CategoryInputState();
}

class _CategoryInputState extends State<CategoryInput> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {});
            isSelected =!isSelected;
          },
          child: Container(
            height: 146.h,
            width: 156.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? Color(0xff3366FF) : Color(0xffD1D5DB),
              ),
              borderRadius:
              BorderRadiusDirectional.circular(12.r),
              color: isSelected ? Color(0xffE5F0FF) : Color(0xffFAFAFA),
            ),
            child: Padding(
              padding:  EdgeInsetsDirectional.symmetric(horizontal: 14,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48.h,
                    height: 48.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffD1D5DB),
                      ),
                      color: Color(0xffFFFFFF),
                      borderRadius:
                      BorderRadiusDirectional.circular(100.r),
                    ),
                    child: SvgPicture.asset(
                      colorFilter: ColorFilter.mode(isSelected?Color(0xff3366FF):Color(0xff292D32),BlendMode.color),
                      fit: BoxFit.scaleDown,
                      widget.svgImage,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "SFProDisplayLRegular"),
                  )
                ],
              ),
            ),

          ),
        ),
      ],
    );
  }
}
