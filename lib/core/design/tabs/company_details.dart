import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/core/design/tabs/second_tab.dart';
import 'package:job_finder/core/design/tabs/third_tab.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'first_tab.dart';


class CompanyDetailsView extends StatefulWidget {
  const CompanyDetailsView({Key? key}) : super(key: key);

  @override
  State<CompanyDetailsView> createState() => _CompanyDetailsViewState();
}

late TabController tabController;

class _CompanyDetailsViewState extends State<CompanyDetailsView> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SharedPreferences.getInstance().then((sharedPrefValue){
      
    });
    return Container(
      width: 327.w,
      height: 290.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
              color: Color(0xff091A7A),
              borderRadius: BorderRadius.circular(100.r),
            ),
            labelColor: Color(0xffFFFFFF),
            unselectedLabelColor: Color(0xff6B7280),
            controller: tabController,
            tabs: [
              Tab(text: "Desicription",),
              Tab(text: "Company",),
              Tab(text: "People",),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                DescriptionView() ,
                CompanyView(),
                PeopleView(),
              ],
            ),
          ),
        ],
      ),

    );

  }
}