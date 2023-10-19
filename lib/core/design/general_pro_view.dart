import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeneralProView extends StatefulWidget {
  final String imageSvg,title;
  GeneralProView({Key? key,required this.imageSvg,required this.title}) : super(key: key);

  @override
  State<GeneralProView> createState() => _GeneralProViewState();
}

class _GeneralProViewState extends State<GeneralProView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24,end: 24),
      child: Column(
        children: [
          Container(
            height: 49.h,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            widget.imageSvg,
                            height: 20.h,
                            width: 20.w,
                          )
                        ],
                      ),
                      radius: 20,
                      backgroundColor: Color(0xffD6E4FF),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 2,
                color: Color(0xffE5E7EB),
              ),
              SizedBox(height: 16.h,),
            ],
          ),
        ],
      ),
    );
  }
}




