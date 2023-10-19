// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:job_finder/core/design/tabs/second_tab.dart';
// import 'package:job_finder/core/design/tabs/third_tab.dart';
//
//
// class AppliedDetailsView extends StatefulWidget {
//   const AppliedDetailsView({Key? key}) : super(key: key);
//
//   @override
//   State<AppliedDetailsView> createState() => _AppliedDetailsViewState();
// }
//
// late TabController tabController;
//
// class _AppliedDetailsViewState extends State<AppliedDetailsView> with SingleTickerProviderStateMixin{
//
//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 3, vsync: this);
//   }
//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 327.w,
//       height: 290.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(100.r),
//       ),
//       child: Column(
//         children: [
//           TabBar(
//             indicator: BoxDecoration(
//               color: Color(0xff091A7A),
//               borderRadius: BorderRadius.circular(100.r),
//             ),
//             labelColor: Color(0xffFFFFFF),
//             unselectedLabelColor: Color(0xff6B7280),
//             controller: tabController,
//             tabs: [
//               Tab(text: "Desicription",),
//               Tab(text: "Company",),
//               Tab(text: "People",),
//             ],
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: tabController,
//               children: [
//                 DescriptionView() ,
//                 CompanyView(),
//                 PeopleView(),
//               ],
//             ),
//           ),
//         ],
//       ),
//
//     );
//
//   }
// }