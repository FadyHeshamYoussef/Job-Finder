import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerAppliedJob extends StatefulWidget {
  final String text,headText,pointText,subText;
  final int value;

  const ContainerAppliedJob ({super.key, required this.headText, required this.pointText, required this.subText, required this.text, required this.value,});

  @override
  State<ContainerAppliedJob> createState() => _ContainerAppliedJobState();
}

class _ContainerAppliedJobState extends State<ContainerAppliedJob> {
  int selectedValue = 0;



  @override
  Widget build(BuildContext context) {
    return Container(
      height:81.h ,
      width:327.w,
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xffD1D5DB)),
        borderRadius: BorderRadiusDirectional.circular(8.r),
      ),
      child: Row(
        children: [
          Padding(
            padding:EdgeInsetsDirectional.only(start: 16,top: 16,bottom: 16,end:100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(height: 8.h,),
                Row(
                  children: [
                    Text(
                      widget.headText,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xff6B7280),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsetsDirectional.only(start: 8,end: 8),
                      child: Text(
                        widget.pointText,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xffACAEBE),
                        ),
                      ),
                    ),

                    Text(
                      widget.subText,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xff6B7280),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Radio(
            value: 1,
            groupValue: selectedValue,
            onChanged: (value) {
              selectedValue = value!;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
