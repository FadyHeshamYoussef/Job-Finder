import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/logic/helper_method.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../core/design/complete_container.dart';
import '../Portfolio_screen/view.dart';
import '../edit_profile_screen/view.dart';
import '../education_screen/view.dart';
import '../experience_screen/view.dart';

class CompleteScreenView extends StatefulWidget {
  const CompleteScreenView({super.key});

  @override
  State<CompleteScreenView> createState() => _CompleteScreenViewState();
}

class _CompleteScreenViewState extends State<CompleteScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Complete Profile",
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
        padding:  EdgeInsetsDirectional.only(start: 30,end:30 ),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  new CircularPercentIndicator(
                    radius: 80.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.5,
                    center: new Text(
                      "50%",
                      style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        color: Color(0xff3366FF),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Color(0xff3366FF),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    textAlign: TextAlign.center,
                    "2/4 Completed",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff3366FF)),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    textAlign: TextAlign.center,
                    "Complete your profile before applying for a job",
                    style: TextStyle(
                        color: Color(0xff6B7280),
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp),
                  ),
                  SizedBox(height: 34.h,),
                  CompleteContainer(
                    onClick: (){
                      navigateTo(context,EditProfileView());
                    },
                    firstText: "Personal Details",
                    secondText: "Full name, email, phone number, and your\naddress",
                  ),
                  SizedBox(height:20.h ,),
                  CompleteContainer(
                    onClick: (){navigateTo(context,EducationScreenView());},
                    firstText: "Education",
                    secondText: "Enter your educational history to be\nconsidered by the recruiter",
                  ),
                  SizedBox(height:20.h ,),
                  CompleteContainer(
                    onClick: (){
                      navigateTo(context, ExperienceScreenView());
                    },
                    firstText: "Experience",
                    secondText: "Enter your work experience to be considered\nby the recruiter",
                  ),
                  SizedBox(height:20.h ,),
                  CompleteContainer(
                    onClick: (){
                      navigateTo(context, PortfolioView());
                    },
                    firstText: "Portfolio",
                    secondText: "Create your portfolio. Applying for\nvarious types of jobs is easier.",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
