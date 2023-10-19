import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/core/design/Text_input.dart';
import 'package:job_finder/core/design/button_app.dart';
import 'package:job_finder/core/design/social_container.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import '../create_account/view.dart';
import '../forget_screen/view.dart';
import 'cubit.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 24),
            child: Row(
              children: [
                Text(
                  "J",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff111827),
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/splash_icons_text.svg",
                  height: 14.h,
                  width: 14.h,
                ),
                Text(
                  "BSQUE",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff111827),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocBuilder(
              bloc: cubit,
              builder: (context, state) {
              return Form(
                key: cubit.formkey,
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsetsDirectional.only(start:24 ,end: 24,bottom: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: "SFProDisplayLMedium",
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            "Please login to find your dream job",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 44.h,),
                          TextInput(
                              svgImage: "assets/icons/profile.svg",
                              textController: cubit.namController,
                              keyType: TextInputType.name,
                              label: "Username",
                          ),
                          SizedBox(height: 16.h,),
                          TextInputObs(
                              label: "Password",
                              keyType: TextInputType.visiblePassword,
                              textController: cubit.passwordController,
                              svgImage: "assets/icons/lock.svg",
                              lastSvgImage: "assets/icons/eye-slash.svg",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 24,end: 24),
                      child: Row(
                        children: [
                          Checkbox(value: cubit.checkBox,
                            onChanged:cubit.toggleCheckBox,
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 43.w,),
                          TextButton(
                            onPressed: () {
                              navigateTo(context, ForgetPasswordView(),);
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3366FF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 120.h,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Dont’t have an account?",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9CA3AF)),
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context,UserForm(),);
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3366FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  cubit.isLoading?Center(child: CircularProgressIndicator(),): ButtonApp(
                        color: Color(0xffD1D5DB),
                        fontFamily: "SF Pro Display",
                        text: "Login",
                      OnClick: (){
                       cubit. login(context);
                      },

                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("assets/images/Line 2.png",width: 70.5.w),
                        SizedBox(width: 25.w,),
                        Text(
                          "Or Login With Account",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "SF Pro Display",
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 25.w,),
                        Image.asset("assets/images/Line 2.png",width: 70.5.w),
                      ],
                    ),
                    SizedBox(height: 24.h,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SocialContainer(svgImage:"assets/icons/google.svg" ,text: "Google"),
                        SizedBox(width: 5.h,),
                        SocialContainer(svgImage:"assets/icons/Facebook-2.svg" ,text: "Facebook"),
                      ],
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
