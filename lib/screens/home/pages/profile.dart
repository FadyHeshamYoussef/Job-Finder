import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import '../../../core/design/general_pro_view.dart';
import '../../../core/design/others_view.dart';
import '../../../core/design/pro_container_view.dart';
import '../../Portfolio_screen/view.dart';
import '../../edit_profile_screen/view.dart';
import '../../help_screen/view.dart';
import '../../language_screen/view.dart';
import '../../login_security_screen/view.dart';
import '../../notification_screen_new/view.dart';
import '../../privacy_screen/view.dart';
import '../../terms_screen/view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 195.h,
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        title: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111827),
                          ),
                        ),
                        backgroundColor: Color(0xffD6E4FF),
                        expandedHeight: 195.h,
                        leading: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xff292D32),
                          ),

                        ),
                        actions: [
                          Padding(
                            padding:EdgeInsetsDirectional.only(end: 24),
                            child: SvgPicture.asset(
                              "assets/icons/logout.svg",
                              height: 24.h,
                              width: 24.h,
                              fit: BoxFit.scaleDown,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  height: 90.h,
                  width: 90.h,
                  top: 199,
                  left: 143,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffffffff),
                    child: Image.asset("assets/images/Profile.png",height: 110.h,width: 110,),
                      radius: 45.r,
                     // backgroundImage: AssetImage("assets/images/Profile.png")
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.h,),
            Center(
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 24,end: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Rafif Dian Axelingga",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff111827),
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Text(
                      "Senior UI/UX Designer",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),
                    ),
                    SizedBox(height: 24.h,),
                    Container(
                      height: 68.h,
                      width: 327.w,
                      decoration: BoxDecoration(
                        color: Color(0xfffFAFAFA),
                        borderRadius: BorderRadiusDirectional.circular(8.r),
                      ),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Applied",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6B7280),
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              Text(
                                "46",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 12.w,),
                          SvgPicture.asset("assets/images/Vector 61.svg",),
                          Column(
                            children: [
                              Text(
                                "Reviewed",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6B7280),
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              Text(
                                "23",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset("assets/images/Vector 61.svg",),
                          Column(
                            children: [
                              Text(
                                "Contacted",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6B7280),
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              Text(
                                "16",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff111827),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B7280),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3366FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h,),
                    Text(
                      "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),
                    ),
                    SizedBox(height: 36.h,),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ProContainerView(title: "General"),
                SizedBox(height: 16.h,),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, EditProfileView (),);
                  },
                    child: GeneralProView(
                  imageSvg: "assets/icons/profile_blue.svg",
                  title: "Edit Profile",
                )),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, PortfolioView(),);
                  },
                  child: GeneralProView(
                    imageSvg: "assets/icons/folder-favorite.svg",
                    title: "Portfolio",
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      navigateTo(context, EditLanguageView(),);
                    },
                    child: GeneralProView(
                  imageSvg: "assets/icons/global.svg",
                  title: "Langauge",
                )),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, NotificationView(),);
                  },
                    child: GeneralProView(
                  imageSvg: "assets/icons/Notification.svg",
                  title: "Notification",
                ),),
                GestureDetector(
                    onTap: (){
                      navigateTo(context, LoginSecurityView(),);
                    },
                    child: GeneralProView(
                  imageSvg: "assets/icons/lock_blue.svg",
                  title: "Login and security",
                )),
                ProContainerView(title: "Others"),
                SizedBox(height: 16.h,),
                OthersView(
                  title: "Accesibility",
                ),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, HelpCenterView(),);
                  },
                  child: OthersView(
                    title: "Help Center",
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, TermsConditionsView(),);
                  },
                  child: OthersView(
                    title: "Terms & Conditions",
                  ),
                ),
                GestureDetector(
                  child: OthersView(
                    title: "Privacy Policy",
                  ),
                  onTap: () {
                    navigateTo(
                      context,
                      PrivacyPolicyView(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}