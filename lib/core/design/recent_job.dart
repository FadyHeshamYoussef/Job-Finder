import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RecentJob extends StatefulWidget {
  final String title,image, desc;

  // final VoidCallback onTap;

  RecentJob({Key? key, required this.title, required this.image, required this.desc,}) : super(key: key);

  @override
  State<RecentJob> createState() => _RecentJobState();
}

class _RecentJobState extends State<RecentJob> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/${widget.image}.png",height:40.h ,width:40.h ,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111827),
                            wordSpacing: 1),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        widget.desc,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff111827),
                            wordSpacing: 1),
                      ),
                    ],
                  ),
                  SizedBox(width: 50.w),

                ],
              ),

                GestureDetector(
                  onTap: (){
                    isClick=!isClick;
                    setState(() {});
                  },
                    child: SvgPicture.asset(
                  "assets/icons/archive.svg",color:  isClick?Color(0xff9CA3AF):Color(0xff3366FF),
                )),
                // IconButton(
              //   onPressed:(){
              //     isClick =!isClick;
              //     setState(() {});
              //   }
              //   icon: SvgPicture.asset(
              //     widget.isSelected ? "assets/icons/archive-minus.svg" : "assets/icons/archive-minus _blue.svg",
              //     fit: BoxFit.scaleDown,
              //     // color: Colors.black,
              //   ),
              ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xffD6E4FF),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Fulltime",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xffD6E4FF),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Remote",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xffD6E4FF),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Senior",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3366FF),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 18.w),
              Row(
                children: [
                  Text(
                    "\$12K-15K",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E8E18),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.end,
                    "/Month",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B7280),
                    ),
                  ),
                ],
              ),
            ],
          ),
            ],
          ),



      );

  }
}