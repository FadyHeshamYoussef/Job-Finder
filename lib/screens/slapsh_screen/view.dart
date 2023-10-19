import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/logic/helper_method.dart';
import '../on_boarding/view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      navigateTo(context, OnBoardingScreenView(),keepHistory: false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 7.h,),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset("assets/images/Ellipse 1.png",width: 701.31.w,height: 600.h,fit: BoxFit.scaleDown,),
              SizedBox(height: 83.h,),
              Image.asset("assets/images/Ellipse 2.png",width: 534.w,height: 533.h,fit: BoxFit.scaleDown,),
              SizedBox(height: 95.h,),
              Image.asset("assets/images/Ellipse 3.png",width: 344.w,height: 343.h,fit: BoxFit.scaleDown,),
              SizedBox(height: 77.h,),
              Image.asset("assets/images/Ellipse 4.png",width: 190.w,height: 189.h,fit: BoxFit.scaleDown,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("J",style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.w700,color: Color(0xff111827),),),
                  SvgPicture.asset("assets/icons/splash_icons_text.svg",height: 24,width: 24,),
                  Text("BSQUE",style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.w700,color: Color(0xff111827),),),

                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
