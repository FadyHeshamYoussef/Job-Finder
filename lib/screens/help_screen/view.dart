import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/help_container.dart';

class HelpCenterView extends StatefulWidget {
  HelpCenterView({super.key});

  @override
  State<HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends State<HelpCenterView> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help Center ",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff111827),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff111827),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 24,end: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 36.h,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "What can we help?",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9CA3AF),
                  ),
                  prefixIcon: SvgPicture.asset(
                      "assets/icons/search-normal.svg",
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.scaleDown),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
                controller: searchController,
              ),
              SizedBox(height:28.h ,),
              Container(
                height:221.h,
                width: 327.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadiusDirectional.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start:12 ,end:12 ,),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(start:12 ,end:12 ,top: 12,bottom:16 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/arrow-up.svg",
                                width: 20.h,
                                height: 20.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff6B7280),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h,),
             SizedBox(
               height: 200.h,
               child: ListView.separated(itemBuilder: (context, index) =>
                   ContainerHelp(svgImage: "assets/icons/arrow-up.svg",
                     text: "Lorem ipsum dolor sit amet",), separatorBuilder: (context, index) => SizedBox(height: 16.h), itemCount:5 ),
             ),



            ],
          ),
        ),
      ),
    );
  }
}
