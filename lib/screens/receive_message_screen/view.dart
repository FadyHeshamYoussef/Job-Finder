import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/succesfully_page.dart';

class  NotReceiveMessageView extends StatefulWidget {

  const  NotReceiveMessageView({super.key});

  @override
  State<NotReceiveMessageView> createState() => _NotReceiveMessageViewState();
}

class _NotReceiveMessageViewState extends State<NotReceiveMessageView> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messsages",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff111827),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff111827),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 24,end: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        "assets/icons/search-normal.svg",
                        height: 20.h,
                        width: 20.h,
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Search messages....",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9CA3AF),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD1D5DB)),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                    controller: searchController,
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 24),
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffD1D5DB),
                          ),
                          borderRadius: BorderRadiusDirectional.circular(100.r),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 16,end:12 ,top: 16,bottom: 12),
                    child: SvgPicture.asset(
                      "assets/icons/setting-4.svg",
                      height: 24.h,
                      width: 24.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 121),
                child: Image.asset(
                  "assets/images/recevie_message.png",
                  height: 142.h,
                  width: 173.sp,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(height: 24.h,),
              Text(
                textAlign: TextAlign.center,
                "You have not received any\nmessages",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111827),
                ),
              ),
              SizedBox(height: 12.h,),
              Padding(
                padding:  EdgeInsetsDirectional.only(start:24 ,end: 24),
                child: Text(
                  textAlign: TextAlign.center,
                  softWrap: false,
                  //overflow: TextOverflow.fade,
                  "Once your application has reached the interview\nstage, you will get a message from the recruiter.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                  ),
                ),
              ),
              SizedBox(height: 110.h,),
            ],
          )
        ],
      ),
    );
  }
}
