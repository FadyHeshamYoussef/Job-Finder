import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/core/logic/helper_method.dart';

import '../../core/design/button_app.dart';
import '../../core/design/container_job_detalis.dart';
import '../../core/design/tabs/company_details.dart';
import '../applied_jobs_1/view.dart';
import '../home/view.dart';

class JobDetailsView extends StatefulWidget {
  const JobDetailsView({super.key,});

  @override
  State<JobDetailsView> createState() => _JobDetailsViewState();
}

class _JobDetailsViewState extends State<JobDetailsView> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Job Detail",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff111827)
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff111827),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(end: 24,),
              child: GestureDetector(
                onTap: (){
                  isClick =!isClick;
                  setState(() {});
                },
                child: SvgPicture.asset(
                  "assets/icons/archive.svg",
                  color: isClick?Color(0xff9CA3AF):Color(0xff3366FF),
                ),
              )),
        ],
      ),
     // resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 32, start: 24, end: 24),
        child: Stack(
          children: [
            Column(
              children: [
                Center(child: JobDetailsContView()),
                SizedBox(height: 32.h,),
                CompanyDetailsView(),
                ButtonApp(
                    color: Color(0xff3366FF),
                    fontFamily: "SFProDisplayLRegular",
                    text: "Apply now",
                  OnClick: (){
                      navigateTo(context,  AppliedJobsScreen1View(),);
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