import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Text_input.dart';
import '../button_app.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(start: 24,end: 24,top: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Biodata",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 4.h,),
          Text(
            "Fill in your bio data correctly",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Color(0xff6B7280),
            ),
          ),
          SizedBox(height: 28.h,),
          // FulllName
          Row(
            children: [
              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "*",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFF472B),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h,),
          TextInput(
            svgImage: ("assets/icons/profile.svg"),
            textController: nameController,
            keyType: TextInputType.name,
            label: "Rafif Dian Axelingga",
          ),
          // Email
          SizedBox(height: 20.h,),
          Row(
            children: [
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "*",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFF472B),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h,),
          TextInput(
            svgImage: ("assets/icons/email.svg"),
            textController: emailController,
            keyType: TextInputType.emailAddress,
            label: "rafifdian12@gmail.com",
          ),
          //PhoneNumber
          SizedBox(height: 20.h,),
          Row(
            children: [
              Text(
                "No.Handphone",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "*",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFF472B),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h,),
          IntlPhoneField(
            dropdownIconPosition: IconPosition.trailing,
            decoration: InputDecoration(
              hintText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            keyboardType: TextInputType.number,
            controller:phoneController,
            initialCountryCode: 'EG',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ],
      ),
    );
  }
}

