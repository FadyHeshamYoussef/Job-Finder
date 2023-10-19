import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OthersView extends StatelessWidget {
  final String title;
  OthersView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(start: 24,end: 24),
        child:  Column(
          children: [
            Container(
              height: 49.h,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "SF",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward),
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
        )
    );
  }
}