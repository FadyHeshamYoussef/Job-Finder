import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryFlag extends StatefulWidget {
  final String image,text;
  const CategoryFlag({super.key, required this.image, required this.text});

  @override
  State<CategoryFlag> createState() => _CategoryFlagState();
}

class _CategoryFlagState extends State<CategoryFlag> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(top: 16,bottom: 16),
      child: GestureDetector(
        onTap: (){
          isSelected =!isSelected;
          setState(() {});
        },
        child: Container(
          height: 42.h,
          width: 151.w,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xffE5F0FF) : Color(0xffFAFAFA),
            border: Border.all(
              color: isSelected ? Color(0xff3366FF) : Color(0xffD1D5DB),
            ),
            borderRadius: BorderRadiusDirectional.circular(100.r),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10,end: 10,top: 8,bottom: 8),
            child: Row(
              children: [
                Image.asset(
                  widget.image,
                  height: 26.h,
                  width: 26.h,
                ),
                SizedBox(width: 8.w,),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontFamily: "SFProDisplayLRegular",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class TribleCategoryFlag extends StatelessWidget {
  final String image1,text1,image2,text2,image3,text3;
  const TribleCategoryFlag({super.key, required this.image1, required this.text1, required this.image2, required this.text2, required this.image3, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height:42.h,
          width: 91.w,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            border: Border.all(
              color:Color(0xffE5E7EB),
            ),
            borderRadius: BorderRadiusDirectional.circular(100.r),
          ),
          child: Padding(
            padding:  EdgeInsetsDirectional.only(start: 10,end: 10,top: 8,bottom: 8),
            child: Row(
              children: [
                Image.asset("image1",height: 26.h,width:26.w,),
                SizedBox(width: 8.w,),
                Text("text1",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp ,color:Color(0xff111827) ),),
              ],
            ),
          ),
        ),
        SizedBox(width: 12.w,),
        Container(
          height:42.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            border: Border.all(
              color:Color(0xffE5E7EB),
            ),
            borderRadius: BorderRadiusDirectional.circular(100.r),
          ),
          child: Padding(
            padding:  EdgeInsetsDirectional.only(start: 10,end: 10,top: 8,bottom: 8),
            child: Row(
              children: [
                Image.asset("image2",height: 26.h,width:26.w,),
                SizedBox(width: 8.w,),
                Text("text2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp ,color:Color(0xff111827) ),),
              ],
            ),
          ),
        ),
        SizedBox(width: 12.w,),
        Container(
          height:42.h,
          width: 98.w,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            border: Border.all(
              color:Color(0xffE5E7EB),
            ),
            borderRadius: BorderRadiusDirectional.circular(100.r),
          ),
          child: Padding(
            padding:  EdgeInsetsDirectional.only(start: 10,end: 10,top: 8,bottom: 8),
            child: Row(
              children: [
                Image.asset("image3",height: 26.h,width:26.w,),
                SizedBox(width: 8.w,),
                Text("text3",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp ,color:Color(0xff111827) ),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
