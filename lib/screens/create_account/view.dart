import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import '../../core/design/Text_input.dart';
import '../../core/design/social_container.dart';
import '../login_screen/view.dart';
import 'cubit.dart';

class UserForm extends StatefulWidget {

  @override
  _UserFormState createState() => _UserFormState();
}
class _UserFormState extends State<UserForm> {

  @override
  Widget build(BuildContext context) {
    CreateCubit cubit = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title:Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
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
          ],),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xff111827),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24,end: 24),
        child: BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          return Form(
            key: cubit.formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 39.h,
                  ),
                  Text(
                    "Cereate Account",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SFProDisplayLMedium",
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(height: 44.h,),
                  TextInput(
                    textController:cubit.userNameController,
                    keyType: TextInputType.name,
                    label: "Username",
                    svgImage: ("assets/icons/profile.svg"),
                  ),
                  SizedBox(height: 16.h,),
                  TextInput(
                    textController: cubit.emailController,
                    keyType: TextInputType.emailAddress,
                    label: "Email",
                    svgImage: ("assets/icons/sms.svg"),
                  ),
                  SizedBox(height: 16.h,),
                  TextInputObs(
                    lastSvgImage: ("assets/icons/eye-slash.svg"),
                    textController: cubit.passwordController,
                    keyType: TextInputType.visiblePassword,
                    label: "Password",
                    svgImage: ("assets/icons/lock.svg"),
                  ),
                  SizedBox(height: 80.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp,color: Color(0xff9CA3AF)
                        ),
                      ),
                      SizedBox(width: 6.w,),
                      TextButton(
                        onPressed: () {
                          navigateTo(context, LoginScreenView(),);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Color(0xff3366FF)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h,),
                  cubit.isLoading?Center(child: CircularProgressIndicator(),):FilledButton(
                    onPressed: () {
                      cubit.creat(context);
                      if (cubit.formkey.currentState!.validate()) {
                        if(cubit.currentPage==2)
                        {

                        }else{
                          cubit.currentPage++;
                         // setState(() {});
                        }

                      //  navigateTo(context,CategoryWorkView());
                      }
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Create account",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color:cubit.currentPage == 0 ? Color(0xff6B7280):Color(0xffFFFFFF),
                      ),
                    ),
                    style: FilledButton.styleFrom(
                      backgroundColor: cubit.currentPage == 0 ? Color(0xffD1D5DB):Color(0xff3366FF),
                      minimumSize: Size(327.w, 48.h),
                    ),
                  ),
                  SizedBox(height: 20.h,),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/Line 1.svg"),
                  SizedBox(width: 12.w),
                  Text(
                    textAlign: TextAlign.center,
                    "Or Sign up With Account",
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                  ),
                  SizedBox(width: 12.w),
                  SvgPicture.asset("assets/icons/Line 1.svg"),
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
            ),
          );
  }
          ),
        ),
    );
  }
}