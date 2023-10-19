import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/logic/helper_method.dart';
import '../create_account/view.dart';
import '../login_screen/view.dart';
class OnBoardingScreenView extends StatefulWidget {
  const OnBoardingScreenView({super.key});

  @override
  State<OnBoardingScreenView> createState() => _OnBoardingScreenViewState();
}

class _OnBoardingScreenViewState extends State<OnBoardingScreenView> {
  int currentPage = 0;
  List<String>titles = [

    "Find a job, and start\nbuilding your career\nfrom now on",
    "Hundreds of jobs are\nwaiting for you to join\ntogether",
    "Get the best choice for the job you've always dreamed of",
  ];
  List<String>description = [
    "Explore over 25,924 available job roles and\nupgrade your operator now.",
    "Immediately join us and start applying for the\njob you are interested in.",
    "The better the skills you have, the greater the\ngood job opportunities for you.",
  ];
  late PageController  _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage:0);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
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
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              navigateTo(
                context,
                LoginScreenView(),
              );
            },
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6B7280),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300.h,
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  currentPage=value;
                  setState(() {});
                },
                children: [
                  Image.asset(
                    "assets/images/Background_1.png",
                    width: 375.w,
                    height: 424.h,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "assets/images/Background-2.png",
                    width: 375.w,
                    height: 424.h,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "assets/images/Background-3.png",
                    width: 375.w,
                    height: 424.h,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24,top: 24,bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titles[currentPage],
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    description[currentPage],
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "SFProDisplayLRegular",),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 36.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => Padding(
                padding:  EdgeInsetsDirectional.only(end: 3),
                child: CircleAvatar(backgroundColor: Color(index==currentPage?0xff3366FF:0xffADC8FF),radius: 4.r,),
              ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 24, end: 24, bottom: 25, top: 36),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xff3366FF),
                  minimumSize: Size(327.w, 48.h),
                ),
                onPressed: () {
                  _pageController.nextPage(duration: Duration(seconds:1), curve:Curves.ease);
                  if(currentPage==2)
                  {
                    navigateTo(context,LoginScreenView());
                  }
                },
                child: Text(
                  currentPage == 2 ? "Get Started" : "Next",
                  style: TextStyle(
                    fontFamily: "SFProDisplayLMedium",
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
