import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../core/design/button_app.dart';
import '../../core/logic/helper_method.dart';
import '../home/pages/profile.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  bool isSwitch = false;
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phone number",
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
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24,end: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 44.h,),
            Text(
              "Main phone number",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
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
            SizedBox(height: 20.h,),
            Row(
              children: [
                Text(
                  "Use the phone number to reset your\npassword",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280),
                  ),
                ),
                SizedBox(width: 20.w,),
                Switch(
                  value: isSwitch,
                  onChanged: (value) {
                  isSwitch = value;
                  setState(() {});
                },)
              ],
            ),
            SizedBox(height: 300.h,),
            ButtonApp(
                color: Color(0xff3366FF),
                text: "Save",
                fontFamily: "SFProDisplayLRegular",
              OnClick: (){
                navigateTo(context, ProfilePage(),);
              },

            ),
          ],
        ),
      ),
    );
  }
}
