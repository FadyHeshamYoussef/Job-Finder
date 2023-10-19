import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/Text_input.dart';
import '../../core/design/button_app.dart';
import '../complete_screen/view.dart';

class EditProfileView extends StatefulWidget {

  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

editProfile()async{
  setState(() {});
  final response = await Dio().post("https://project2.amit-learning.com/api/auth/login",
    data: {
    "address":addressController.text,
      "bio": bioController.text,
      "mobile": phoneController.text,
    },
  );
  setState(() {});
  print(response.data);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edite Profile",
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    child: Image.asset("assets/images/Profile.png",height:90.h ,width:90.h,),
                  ),
                  Container(
                    height: 90.h,
                    width: 90.h,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff).withOpacity(0.1),
                      borderRadius: BorderRadiusDirectional.circular(50.r),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ImagePicker.platform.getImage(source: ImageSource.gallery);

                    },
                    icon: SvgPicture.asset(
                      "assets/icons/camera.svg",
                      height: 32.h,
                      width: 32.h,
                      fit: BoxFit.scaleDown,
                    ),
                  ),

                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Change  Photo",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3366FF),
                  ),
                ),
              ),
              SizedBox(height: 25.h,),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF),
                ),
              ),
              ContainerInput(
                label:"User Name" ,
                keyType: TextInputType.name,
                textController: nameController,
              ),
              Text(
                "Bio",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF),
                ),
              ),
              ContainerInput(
                label:"Senior UI/UX Designer" ,
                keyType: TextInputType.text,
                textController: bioController,
              ),
              Text(
                "Address",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF),
                ),
              ),
              ContainerInput(
                label:"Ranjingan, Wangon, Wasington City" ,
                keyType: TextInputType.streetAddress,
                textController: addressController,
              ),
              Text(
                "No.Handphone",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff9CA3AF),
                ),
              ),
              SizedBox(height: 6.h,),
              IntlPhoneField(
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
              ButtonApp(
                  color: Color(0xff3366FF),
                  OnClick: () {
                    navigateTo(
                      context,
                      CompleteScreenView(),
                    );
                  },
                  fontFamily: "SFProDisplayLRegular",
                  text: "Save"),
            ],
          ),
        ),
      ),
    );
  }
}
