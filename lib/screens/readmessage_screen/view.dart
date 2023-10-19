import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MessageReadView extends StatefulWidget {

  const MessageReadView({super.key});

  @override
  State<MessageReadView> createState() => _MessageReadViewState();
}

class _MessageReadViewState extends State<MessageReadView> {
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
                    controller:  searchController,
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
          SizedBox(height: 24.h,),
          Container(
            height:36.h,
            width: 375.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF4F4F5),),
              color: Color(0xffE5E7EB),
              borderRadius: BorderRadiusDirectional.circular(1.r),
            ),
            child: Padding(
              padding:  EdgeInsetsDirectional.only(start: 24,),
              child: Row(
                children: [
                  Text(
                    "Unread",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6B7280),
                    ),
                  ),
                  SizedBox(width: 135.w,),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Read all messages",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3366FF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28),
            child: SizedBox(
              height:55.h,
              child: Container(
                width:327.w ,
                height:55.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                        children:[
                          Image.asset(
                            "assets/images/Twitter Logo_2.png",
                            height: 44.h,
                            width: 44.h,
                            fit: BoxFit.scaleDown,
                          ),
                          CircleAvatar(
                            radius: 7.r,
                            child: Text("1",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 10.sp,fontWeight: FontWeight.w500),),
                          ),
                        ]
                    ),

                    Padding(
                      padding:EdgeInsetsDirectional.only(start: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Twitter",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                              SizedBox(width: 170.w,),
                              Text(
                                "12.39",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3366FF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Here is the link: http://zoom.com/abcdeefg",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),

              ),
            ),
          ),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28),
            child: SizedBox(
              height:55.h,
              child: Container(
                width:327.w ,
                height:55.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                        children:[
                          Image.asset(
                            "assets/images/Gojek Logo.png",
                            height: 44.h,
                            width: 44.h,
                            fit: BoxFit.scaleDown,
                          ),
                          CircleAvatar(
                            radius: 7.r,
                            child: Text("1",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 10.sp,fontWeight: FontWeight.w500),),
                          ),
                        ]
                    ),

                    Padding(
                      padding:EdgeInsetsDirectional.only(start: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gojek Indonesia",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                              SizedBox(width: 104.w,),
                              Text(
                                "12.39",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3366FF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Let’s keep in touch.",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),

              ),
            ),
          ),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,),
            child: SizedBox(
              height:55.h,
              child: Container(
                width:327.w ,
                height:55.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                        children:[
                          Image.asset(
                            "assets/images/Dana Logo.png",
                            height: 44.h,
                            width: 44.h,
                            fit: BoxFit.scaleDown,
                          ),
                          CircleAvatar(
                            radius: 7.r,
                            child: Text("1",style: TextStyle(color: Color(0xffFFFFFF),fontSize: 10.sp,fontWeight: FontWeight.w500),),
                          ),
                        ]
                    ),

                    Padding(
                      padding:EdgeInsetsDirectional.only(start: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Dana",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                              SizedBox(width: 164.w,),
                              Text(
                                "Yesterday",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff3366FF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Thank you for your attention!",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),

              ),
            ),
          ),
          Divider(
            indent: 24,
            endIndent: 24,
            color: Color(0xffE5E7EB),
            thickness: 2,
          ),
          SizedBox(height: 20.h,),

        ],
      ),
    );
  }
}
