import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../screens/job_detail/model.dart';

class CompanyView extends StatefulWidget {
  const CompanyView({Key? key}) : super(key: key);

  @override
  State<CompanyView> createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
  
  bool isLoading = false;
  bool isFailed = false;
  List<DataModel> list = [];
  getData()async{
    isLoading = true;


    var response = await Dio().get(
        "https://project2.amit-learning.com/api/showCompany",
        options: Options(
            headers: {
              'Authorization':"Bearer 1313|KrW9gcvBdoWLjiEGGFW000PwV7iPI3ZroL7KHl49",
            }
        )
    );

    for(int i = 0; i < 2; i++){
      DataModel model = DataModel(response.data["data"][i]);
      list.add(model);
    }
    isLoading = false;
    setState(() {});

  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    // SharedPreferences.getInstance().then((sharedPefValue) {
    //   sharedPefValue.getString()
    // });
    return ListView.separated(
        itemBuilder:(context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
          ),
        ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 90.h,
                      width: 157.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffE5E7EB),
                        ),
                        borderRadius: BorderRadiusDirectional.circular(8.r),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(top: 8, start: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              list[index].email,
                             // "twitter@mail.com",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90.h,
                      width: 157.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffE5E7EB),
                        ),
                        borderRadius: BorderRadiusDirectional.circular(8.r),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(top: 8, start: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Website",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              list[index].website,
                             // "https://twitter.com",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  "About Company",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "SF",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  list[index].about,
                 // "Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "SF",
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4B5563)),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 12.h) ,
        itemCount: 1,
    );
  }
}