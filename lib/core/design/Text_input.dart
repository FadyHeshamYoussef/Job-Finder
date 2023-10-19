import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInputObs extends StatefulWidget {
  final String label,svgImage,lastSvgImage;
  final TextInputType keyType;
  final TextEditingController textController;
  const TextInputObs({required this.label, required this.keyType, required this.textController, required this.svgImage,required this.lastSvgImage});

  @override
  State<TextInputObs> createState() => _TextInputObsState();
}

class _TextInputObsState extends State<TextInputObs> {
   bool  obscureT = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(
              start: 16, top: 18, bottom: 18, end: 12),
          child: SvgPicture.asset(widget.svgImage, width: 20.h, height: 20.h),
        ),
        suffixIcon: Padding(
          padding: EdgeInsetsDirectional.only(
              start: 12, end: 18, bottom: 18, top: 18),
          child:  IconButton(
            icon: Icon(obscureT ? Icons.visibility_outlined : Icons.visibility_off_outlined),
            onPressed: () {
              setState(() {
                obscureT = !obscureT;
              });
            },
          ),
          // child: SvgPicture.asset(lastSvgImage, height: 20.h, width: 20.h),
        ),
        hintText: widget.label,
        hintStyle: TextStyle(
            fontFamily: "SFProDisplayLMedium",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD1D5DB)),
          borderRadius: BorderRadius.circular(8.r),
        ),

      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a password';
        } else if (value.length < 5) {
          return 'Password must be at least 8 characters';
        }
        return null;
      },
      obscureText: !(obscureT && true),
      // obscureText: obscureT,
      keyboardType: widget.keyType,
      controller: widget.textController,
    );
  }
}

class TextInput extends StatelessWidget {
  final String label,svgImage;
  final TextInputType keyType;
  final TextEditingController textController;
  const TextInput({required this.label, required this.keyType, required this.textController, required this.svgImage,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide(color: Color(0xffD1D5DB), width: 2.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: Color(0xffD1D5DB), width: 1.w),
        ),
        prefixIcon: Padding(
          padding:  EdgeInsetsDirectional.only(start: 16,top: 18,bottom: 18,end: 12),
          child: SvgPicture.asset(svgImage,width:20.h ,height:20.h ),
        ),
        hintText: label,
        hintStyle: TextStyle(fontFamily:"SFProDisplayLMedium" ,fontSize: 14.sp,fontWeight: FontWeight.w400),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your Username';
        }
        return null;
      },
      keyboardType: keyType,
      controller: textController,
    );
  }
}







class ContainerInput extends StatelessWidget {
  final String label;
  final TextInputType keyType;
  final TextEditingController textController;
  const ContainerInput({super.key, required this.label, required this.keyType, required this.textController,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 6,bottom: 16),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(fontFamily:"SFProDisplayLMedium" ,fontSize: 14.sp,fontWeight: FontWeight.w400),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        keyboardType: keyType,
        controller: textController,
      ),
    );
  }
}