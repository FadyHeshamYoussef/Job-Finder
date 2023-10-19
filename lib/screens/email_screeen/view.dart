import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/Text_input.dart';
import '../../core/design/button_app.dart';
import '../../core/logic/helper_method.dart';
import '../home/pages/profile.dart';

class EmailScreenView extends StatefulWidget {
  const EmailScreenView({super.key});

  @override
  State<EmailScreenView> createState() => _EmailScreenViewState();
}

class _EmailScreenViewState extends State<EmailScreenView> {
  final emailController = TextEditingController();

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
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 24,
          end: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 44.h,
            ),
            Text(
              "Main e-mail address",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            TextInput(
              textController: emailController,
              keyType: TextInputType.name,
              label: "E-mail address",
              svgImage: ("assets/icons/email.svg"),
            ),
            SizedBox(
              height: 380.h,
            ),
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
