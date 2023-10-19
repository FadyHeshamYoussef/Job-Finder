import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';

class CompleteContainer extends StatefulWidget {
  final String firstText,secondText;
  var onClick;


  CompleteContainer({super.key,required this.firstText, required this.secondText, required this.onClick,});

  @override
  State<CompleteContainer> createState() => _CompleteContainerState();
}

class _CompleteContainerState extends State<CompleteContainer> {




  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {});
      },
      child: Container(
        height: 100.h,
        width:330.w ,
        decoration: BoxDecoration(
          border: Border.all(color:Color(0xffD1D5DB),),
          color: Colors.transparent,
          borderRadius: BorderRadiusDirectional.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsetsDirectional.only(start: 14,top: 22,end: 14,bottom:22 ),
                  child: Image.asset(
                    "assets/images/tick-circle.png",
                    color: Color(0xff9CA3AF),
                    width: 23.33.w,
                    height: 23.33.h,
                  ),
                ),
                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.firstText,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff111827),
                      ),
                    ),
                    Text(
                      widget.secondText,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6B7280),
                      ),
                    ),
                  ],
                ),



              ],
            ),
            IconButton(
              onPressed: () {
                widget.onClick();
                // navigateTo(context,widget.page);
                setState(() {});
              },
              icon: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
