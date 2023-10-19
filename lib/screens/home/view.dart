import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder/screens/home/pages/applied.dart';
import 'package:job_finder/screens/home/pages/home.dart';
import 'package:job_finder/screens/home/pages/messages.dart';
import 'package:job_finder/screens/home/pages/profile.dart';
import 'package:job_finder/screens/home/pages/saved.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {



  List<Widget> pages=[
    HomePage(),
    MessagePage(),
    AppliedView(),
    SavedPage(),
    ProfilePage(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsetsDirectional.only(top: 8),
        child: Row(
          children: [
            _ItemButtom(
              isSelected: currentPage==0,
              image: "home",
              title: "Home",
              onTap: () {
                currentPage = 0;
                setState(() {});
              },
            ),
            _ItemButtom(
              isSelected: currentPage==1,
              image: "message",
              title: "Messages",
              onTap: () {
                currentPage = 1;
                setState(() {});
              },
            ),
            _ItemButtom(
              isSelected: currentPage==2,
              image: "applied",
              title: "Applied",
              onTap: () {
                currentPage = 2;
                setState(() {});
              },
            ),
            _ItemButtom(
              isSelected: currentPage==3,
              image: "saved",
              title: "Saved",
              onTap: () {
                currentPage = 3;
                setState(() {});
              },
            ),
            _ItemButtom(
              isSelected: currentPage==4,
              image: "profile",
              title: "Profile",
              onTap: () {
                currentPage = 4;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}






class _ItemButtom extends StatelessWidget {
  final String image ,title;
  final VoidCallback onTap;
  final bool isSelected;
  const _ItemButtom({super.key, required this.image, required this.title, required this.onTap, this.isSelected = false , });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/icons/$image.svg",height: 24.h,width: 24.w,color: isSelected?Color(0xff3366FF):null),
              SizedBox(height: 2.h),
              Text(title,style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500,color: isSelected?Color(0xff3366FF):Color(0xff9CA3AF)),)
            ],
          ),
        ),
      ),
    );
  }
}
