import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogSecurity extends StatelessWidget {
  final String title,subTitle;
  LogSecurity({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(start: 24,top: 12),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff111827),
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff6B7280),
            ),
          ),
          IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.arrow_forward,
              ))
        ],
      ),
    );
  }
}




class LogAndSecurity extends StatelessWidget {
  final String title;
  const LogAndSecurity({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsetsDirectional.only(start: 24,top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff111827),
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,))

        ],
      ),
    );
  }
}
