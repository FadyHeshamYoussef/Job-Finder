import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/design/button_app.dart';
import '../../core/design/education_container.dart';
import '../../core/logic/helper_method.dart';
import '../complete_screen/view.dart';
import '../home/pages/home.dart';

class ExperienceScreenView extends StatefulWidget {
  const ExperienceScreenView({super.key});

  @override
  State<ExperienceScreenView> createState() => _ExperienceScreenViewState();
}

class _ExperienceScreenViewState extends State<ExperienceScreenView> {
  List<String> dropdownItems = [
    'full',
    'Part Time',
    'Remote'
  ];
  String? selectedDropdownItem;
  final positionController = TextEditingController();
  final workController = TextEditingController();
  final companyController = TextEditingController();
  final locationController = TextEditingController();
  final startController = TextEditingController();

  bool checkBox = true;
  bool isFailed = false;
  bool isLoading = false;
  exprience()async{
    isLoading = true;
    setState(() {});
    try{
      final response = await Dio().post("https://project2.amit-learning.com/api/auth/login",
        data: {
          "postion": positionController.text,
          "type_work": workController.text,
          "comp_name":companyController.text,
          "location":locationController.text,
        },
      );
      print(response.data);
    }on DioException {
      isFailed = true;
    }
    isLoading = false;
    setState(() {});
    navigateTo(context, CompleteScreenView(),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Experience",
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
              SizedBox(height: 32.h,),
              Stack(
                children:[
                  Container(
                    height:606.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD1D5DB),),
                      borderRadius: BorderRadiusDirectional.circular(12.r),
                    ),

                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EducationPage(
                        title: "Position *",
                        textEditing: positionController,
                      ),
                      // EducationPage(
                      //   title: "Type of work",
                      //   textEditing: workController,
                      // ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(start:12 ,end:12,bottom: 6 ),
                        child: Text(
                          "Type of work",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Color(0xff9CA3AF),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsetsDirectional.only(start:12 ,end: 12),
                        child: Container(
                          height: 60.h,
                          width: 305.w,
                          child: TextFormField(
                            controller: workController,
                            decoration: InputDecoration(
                              suffixIcon: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12),
                                child: DropdownButtonFormField<String>(
                                  icon: SvgPicture.asset(
                                      "assets/icons/arrow-down.svg",
                                      fit: BoxFit.scaleDown,
                                      color: Colors.black),
                                  value: selectedDropdownItem,
                                  items:
                                  dropdownItems.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15),
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                              color: Color(0xff1F2937),
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedDropdownItem = newValue!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD1D5DB), width: 2.w),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(10.r),
                                borderSide: BorderSide(
                                    color: Color(0xffD1D5DB)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      EducationPage(
                        title: "Company name *",
                        textEditing: companyController,
                      ),
                      EducationPage(
                        title: "Location",
                        textEditing: locationController,
                      ),
                      Row(
                        children: [
                          Checkbox(value: checkBox,
                            onChanged: (value) {
                              checkBox = value!;
                              setState(() {});
                            },
                          ),
                          Text("I am currently working in this role",
                            style: TextStyle(fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff111827),
                            ),
                          ),
                        ],
                      ),
                      EducationPage(
                        title: "Start Year *",
                        textEditing: startController,
                      ),
                      SizedBox(height: 10.h,),
                      ButtonApp(
                        color:Color(0xff3366FF) ,
                        text: "Save",
                        fontFamily:"SFProDisplayLRegular" ,
                        OnClick: (){
                          exprience();
                        },

                      ),
                    ],
                  ),
                ],

              ),
              SizedBox(height:24.h ,),
              Container(
                height:99.h,
                width:329.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD1D5DB)),
                  borderRadius: BorderRadiusDirectional.circular(8.r),
                ),
                child: Padding(
                  padding:  EdgeInsetsDirectional.only(start: 12,end:12 ,bottom:27 ,top:27 ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Color(0xff1939B7),
                        child: Image.asset(
                          "assets/images/Logo-2.png",
                          height: 12.h,
                          width: 20.08.w,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 12,end:12 ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Senior UI/UX Designer",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xff111827),
                              ),
                            ),
                            Text(
                              "Remote • GrowUp Studio",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Color(0xff6B7280),
                              ),
                            ),
                            Text(
                              "2019 - 2022",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Color(0xff9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: SvgPicture.asset(
                          "assets/icons/edit-2.svg",
                          width: 24.h,
                          height: 24.h,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}









