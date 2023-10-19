import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import '../../core/design/pro_container_view.dart';
import '../change_password/view.dart';
import '../email_screeen/view.dart';
import '../phone_Screen/view.dart';
import '../verification_4/view.dart';

class LoginSecurityView extends StatelessWidget {
  const LoginSecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login and security",
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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 32.h,),
          ProContainerView(title: "Accont access"),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,top: 32.2),
            child: Row(
              children: [
                Text(
                  "Email address",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  "rafifdian12@gmail.com",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    navigateTo(context,  EmailScreenView(),);
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Divider(
            height: 20,
            color: Color(0xffD1D5DB),
            indent: 24,
            endIndent: 24,
            thickness: 2,
          ),
          SizedBox(height: 7.h,),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,),
            child: Row(
              children: [
                Text(
                  "Phone number",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(width: 215,),
                IconButton(
                  onPressed: () {
                    navigateTo(context, PhoneNumberView());
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),

          ),
          Divider(
            height: 20,
            color: Color(0xffD1D5DB),
            indent: 24,
            endIndent: 24,
            thickness: 2,
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding:EdgeInsetsDirectional.only(start: 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Change password",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(width: 150.w,),
                IconButton(
                    onPressed: () {
                      navigateTo(context,ChangePasswordScreenView(),);
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                    ),),
              ],
            ),
          ),
          Divider(
            height: 20,
            color: Color(0xffD1D5DB),
            indent: 24,
            endIndent: 24,
            thickness: 2,
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Two-step verification",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(width: 39.w,),
                Text(
                  "Non active",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
                IconButton(onPressed: (){navigateTo(context, VerificationFourView(),);}, icon: Icon(Icons.arrow_forward,))

              ],
            ),
          ),
          Divider(
            height: 20,
            color: Color(0xffD1D5DB),
            indent: 24,
            endIndent: 24,
            thickness: 2,
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24,),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Face ID",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(
                  width: 225.w,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                    ))
              ],
            ),
          ),
          Divider(
            height: 20,
            color: Color(0xffD1D5DB),
            indent: 24,
            endIndent: 24,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
