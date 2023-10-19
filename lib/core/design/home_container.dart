import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeContainer extends StatefulWidget {
  final String image,firstTEXT,secondText;
  const HomeContainer({super.key, required this.image, required this.firstTEXT, required this.secondText});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:87.h ,
      width: 327.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            widget.image,
            height: 40.h,
            width: 40.w,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(width: 16.w,),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.firstTEXT,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h,),
              Text(
                widget.secondText,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(width: 60.w,),
          GestureDetector(
            onTap: (){
              isSelected=!isSelected;
              setState(() {});
            },
            child: SvgPicture.asset(
              "assets/icons/archive.svg",color: isSelected?Color(0xff292D32):Color(0xff3366FF),
              height: 24.h,
              width: 24.w,
              fit: BoxFit.fill,
            ),
          ),

        ],
      ),
    );
  }
}
