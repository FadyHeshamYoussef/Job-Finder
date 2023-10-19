import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../active_screen/view.dart';
import '../../rejected_screen/view.dart';

class AppliedView extends StatefulWidget {
  const AppliedView({Key? key}) : super(key: key);

  @override
  State<AppliedView> createState() => _AppliedViewState();
}

class _AppliedViewState extends State<AppliedView> with SingleTickerProviderStateMixin{
  bool isClick = false;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
    appBar: AppBar(
        title: Text(
          "Applied Job",
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
      body:ListView(
        children: [
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: SizedBox(
              width: 300.w,
              height: 46.h,
              child: TabBar(
                physics: BouncingScrollPhysics(),
                controller: tabController,
                indicator: BoxDecoration(
                  color: Color(0xff091A7A),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                labelColor: Color(0xffFFFFFF),
                unselectedLabelColor: Color(0xff6B7280),
                tabs: [
                  Tab(text: "Active"),
                  Tab(text: "Rejected"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            height: MediaQuery.of(context).size.height-276,
            child: TabBarView(
              controller: tabController,
              children: [
                ActiveScreenView() ,
                RejectedScreenView(),
              ],
            ),
          ),

        ],
      ),

    );
  }
}