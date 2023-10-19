import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/applied_container.dart';


class MessagePage extends StatefulWidget {

  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
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
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,bottom:12),
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
                  padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,bottom:12),
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
                  padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,bottom:12),
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
                                  "assets/images/Shoope Logo.png",
                                  height: 44.h,
                                  width: 44.h,
                                  fit: BoxFit.scaleDown,
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
                                      "Shoope",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff111827),
                                      ),
                                    ),
                                    SizedBox(width: 170.w,),
                                    Text(
                                      "09.45",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  "Thank You David!",
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
                  padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,bottom:12),
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
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,bottom:12),
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
                                  "assets/images/Slack Logo.png",
                                  height: 44.h,
                                  width: 44.h,
                                  fit: BoxFit.scaleDown,
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
                                      "Slack",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff111827),
                                      ),
                                    ),
                                    SizedBox(width: 190.w,),
                                    Text(
                                      "12/8",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  "You: I look forward to hearing from you",
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
                  padding: EdgeInsetsDirectional.only(start: 24,end: 2,top:28 ,bottom:12),
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
                                  "assets/images/Facebook Logo.png",
                                  height: 44.h,
                                  width: 44.h,
                                  fit: BoxFit.scaleDown,
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
                                      "Facebook",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff111827),
                                      ),
                                    ),
                                    SizedBox(width: 156.w,),
                                    Text(
                                      "12/8",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  "You: What about the interview stage?",
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
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (context, scrollController) => SingleChildScrollView(
              controller: scrollController,
              child: SizedBox(
                height: 5000.h,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(16.r),
                  child: Container(
                    color: Color(0xffFFFFFF),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12.h,),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 163,end: 163,top: 12,bottom: 24),
                          child: Container(
                            width: 60.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff1F2937),),
                              borderRadius: BorderRadiusDirectional.circular(100.r),
                              color: Color(0xff1F2937),
                            ),

                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 31),
                          child: Text(
                            "Message filters",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff111827),
                              ),
                            ),
                        ),
                        Padding(
                          padding:EdgeInsetsDirectional.only(start: 24,end:24 ,),
                          child: Column(
                            children: [
                              SizedBox(height: 24.h,),
                              Container(
                                height:49.h,
                                width:327.w ,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffD1D5DB),
                                  ),
                                  borderRadius:
                                  BorderRadiusDirectional.circular(100.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.all(14),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Unread",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff374151),
                                        ),
                                      ),
                                      SizedBox(width:210.w ,),
                                      GestureDetector(
                                        onTap: (){},
                                        child: SvgPicture.asset(
                                          "assets/icons/arrow-right.svg",
                                          width: 16.h,
                                          height: 16.h,
                                          fit: BoxFit.fill,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h,),
                              Container(
                                height:49.h,
                                width:327.w ,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffD1D5DB),
                                  ),
                                  borderRadius:
                                  BorderRadiusDirectional.circular(100.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.all(14),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Spam",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff374151),
                                        ),
                                      ),
                                      SizedBox(width:220.w ,),
                                      GestureDetector(
                                        onTap: (){},
                                        child: SvgPicture.asset(
                                          "assets/icons/arrow-right.svg",
                                          width: 16.h,
                                          height: 16.h,
                                          fit: BoxFit.fill,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h,),
                              Container(
                                height:49.h,
                                width:327.w ,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffD1D5DB),
                                  ),
                                  borderRadius:
                                  BorderRadiusDirectional.circular(100.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.all(14),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Archived",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff374151),
                                        ),
                                      ),
                                      SizedBox(width:193.w ,),
                                      GestureDetector(
                                        onTap: (){},
                                        child: SvgPicture.asset(
                                          "assets/icons/arrow-right.svg",
                                          width: 16.h,
                                          height: 16.h,
                                          fit: BoxFit.fill,
                                        ),
                                      )
                                    ],
                                  ),
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
            ),


          ),
              ],
            ),
          );



    
  }
}