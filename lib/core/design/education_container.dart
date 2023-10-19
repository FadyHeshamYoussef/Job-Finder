// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class EducationPage extends StatelessWidget {
//   final String title;
//    EducationPage({super.key, required this.title,});
//   final universityController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 484.h,
//       width:327.w,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Color(0xffD1D5DB),
//         ),
//         borderRadius: BorderRadiusDirectional.circular(12.r),
//       ),
//       child: Padding(
//         padding:EdgeInsetsDirectional.symmetric(horizontal:12 ,vertical: 12),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: Color(0xff9CA3AF),
//                 fontWeight: FontWeight.w500,
//                 fontSize: 16.sp,
//               ),
//             ),
//             SizedBox(height: 6.h,),
//             TextFormField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.r),
//                 ),
//               ),
//               controller: universityController,
//               keyboardType: TextInputType.text,
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class EducationPage extends StatelessWidget {
  final String title;
   EducationPage({super.key, required this.title, required this.textEditing});
  final TextEditingController textEditing;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(start:12 ,end:12 ,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h,),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff9CA3AF),
            ),
          ),
          SizedBox(height: 6.h,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            controller:  textEditing,
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}





class EducationPageSvg extends StatefulWidget {
  final String title;
  EducationPageSvg({super.key, required this.title});

  @override
  State<EducationPageSvg> createState() => _EducationPageSvgState();
}

class _EducationPageSvgState extends State<EducationPageSvg> {
  DateTime?result;


  final dateTodayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(start:12 ,end:12 ,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.h,),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff9CA3AF),
            ),
          ),
          SizedBox(height: 6.h,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              suffixIcon: GestureDetector(
                onTap: ()async{
                  result = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1999),
                    lastDate: DateTime(2030),
                  );
                  if(result!=null){
                    Text(
                      DateFormat.MONTH_DAY,
                    );
                    setState(() {});
                  }
                },

                child: SvgPicture.asset(
                  "assets/icons/calendar.svg", height: 24.h,
                  width: 24.w,
                  fit: BoxFit.scaleDown,
                ),
              ),
              hintText: result.toString().split(" ").first,
              hintStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff1F2937),
              ),
            ),
            readOnly: true,
            controller:  dateTodayController,
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}

