// import 'dart:io';
//
// import 'package:dotted_border/dotted_border.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:path/path.dart';
//
// class PortfolioView extends StatefulWidget {
//   const PortfolioView({super.key});
//
//   @override
//   State<PortfolioView> createState() => _PortfolioViewState();
// }
//
// class _PortfolioViewState extends State<PortfolioView> {
//   File? selectedFile;
//
//   Future<void> pickAndUploadFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf'],
//     );
//     if (result != null) {
//       setState(() {
//         selectedFile = File(result.files.single.path!);
//       });
//       await uploadFile(selectedFile!);
//     } else {
//
//     }
//   }
//
//   Future<void> uploadFile(File file) async {
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Edite Profile",
//           style: TextStyle(
//             fontSize: 20.sp,
//             fontWeight: FontWeight.w500,
//             color: Color(0xff111827),
//           ),
//         ),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back,
//             color: Color(0xff111827),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: ListView(
//         physics: const BouncingScrollPhysics(),
//         children: [
//           SafeArea(
//             child: Padding(
//               padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 12.h,
//                   ),
//                   Text("Add portfolio here",style: TextStyle(color: const Color(0xff111827),fontFamily: "SFPRODISPLAYMEDIUM",fontSize: 20.sp,fontWeight:FontWeight.w500 ),),
//                   SizedBox(height: 16.h),
//                   Column(
//                     children: [
//                       GestureDetector(
//                           child:Padding(
//                             padding:  EdgeInsetsDirectional.only(start: 24,end:24 ),
//                             child: SvgPicture.asset("assets/images/Upload document.svg"),
//                           ),
//                           onTap: () {
//                             pickAndUploadFile();
//                           }
//                       ),selectedFile!=null?
//                       Container(
//                         width: 327.w,
//                         height: 74.h,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8.r),
//                           border: Border.all(color: const Color(0xffD1D5DB)),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 16.w),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               SvgPicture.asset("assets/icons/export.svg"),
//                               Column(
//                                 children: [
//                                   SizedBox(height: 4.h),
//                                   Text(selectedFile != null ? basename(selectedFile!.path) : ""),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       pickAndUploadFile();
//                                     },
//                                     child: SvgPicture.asset("assets/icons/edit-2.svg"),
//                                   ),
//                                   SizedBox(width: 8.w),
//                                   GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         selectedFile = null;
//                                       });
//                                     },
//                                     child: SvgPicture.asset("assets/icons/close-circle.svg"),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ):SizedBox.shrink()
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

      // body: Padding(
      //   padding: EdgeInsetsDirectional.only(start: 24, end: 24),
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       SizedBox(height: 36.h,),
      //       Text(
      //         "Add portfolio here",
      //         style: TextStyle(
      //           fontSize: 20.sp,
      //           fontWeight: FontWeight.w500,
      //           color: Color(0xff111827),
      //         ),
      //       ),
      //       SizedBox(height: 16.h,),
      //       DottedBorder(
      //         color: Color(0xff3366FF),
      //         borderType: BorderType.RRect,
      //         radius: Radius.circular(12),
      //         child: ClipRRect(
      //           borderRadius: BorderRadius.all(
      //             Radius.circular(12),
      //           ),
      //           child: Stack(
      //             children: [
      //               Container(
      //                 height: 223.h,
      //                 width: 327.w,
      //                 color: Color(0xffECF2FF),
      //               ),
      //               Column(
      //                 children: [
      //                   Padding(
      //                     padding: EdgeInsetsDirectional.only(
      //                         start: 135, end: 135, top: 16, bottom: 16),
      //                     child: CircleAvatar(
      //                       radius: 30.r,
      //                       backgroundColor: Color(0xffD6E4FF),
      //                       child: Image.asset(
      //                           "assets/images/document-upload.png",
      //                           height: 32.h,
      //                           width: 32.h,
      //                           fit: BoxFit.scaleDown),
      //                     ),
      //                   ),
      //                   Text(
      //                     "Upload your other file",
      //                     style: TextStyle(
      //                         fontWeight: FontWeight.w500,
      //                         fontSize: 18.sp,
      //                         color: Color(0xff111827)),
      //                   ),
      //                   SizedBox(height: 8.h,),
      //                   Text(
      //                     "Max. file size 10 MB",
      //                     style: TextStyle(
      //                         fontWeight: FontWeight.w400,
      //                         fontSize: 12.sp,
      //                         color: Color(0xff6B7280)),
      //                   ),
      //
      //                   Padding(
      //                     padding: EdgeInsetsDirectional.only(
      //                         start: 16, end: 16, bottom: 20, top: 24),
      //                     child: FilledButton(
      //                       style: FilledButton.styleFrom(
      //                           backgroundColor: Color(0xffD6E4FF)),
      //                       onPressed: () {},
      //                       child: Row(
      //                         children: [
      //                           Padding(
      //                             padding: EdgeInsetsDirectional.only(
      //                                 start: 109, end: 10, bottom: 11, top: 11),
      //                             child: SvgPicture.asset(
      //                               "assets/icons/export.svg", height: 20.h,
      //                               width: 20.h,),
      //                           ),
      //                           Text("Add file", style: TextStyle(
      //                               fontWeight: FontWeight.w500,
      //                               fontSize: 14.sp,
      //                               color: Color(0xff3366FF)),),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //
      //
      //
      //     ],
      //   ),





// //             // Container(
// //             //   height: 221.h,
// //             //   width:327.w,
// //             //   decoration: BoxDecoration(
// //             //     border: Border.all(color: Color(0xff6690FF),),
// //             //     color: Color(0xffECF2FF),
// //             //     borderRadius: BorderRadiusDirectional.circular(8.r),
// //             //   ),
// //             //   child: Column(
// //             //     children: [
// //             //       Padding(
// //             //         padding: EdgeInsetsDirectional.only(start: 130,end: 130,top: 16,bottom: 16),
// //             //         child: Container(
// //             //           height: 70.h,
// //             //           width: 70.h,
// //             //           decoration: BoxDecoration(
// //             //             color: Color(0xffD6E4FF),
// //             //             borderRadius: BorderRadiusDirectional.circular(100.r),
// //             //           ),
// //             //           child: Image.asset(
// //             //             "assets/images/document-upload.png",
// //             //             width: 32.h,
// //             //             height: 32.h,
// //             //             fit: BoxFit.scaleDown,
// //             //           ),
// //             //         ),
// //             //       ),
// //             //       Text(
// //             //         "Upload your other file",
// //             //         style: TextStyle(
// //             //           fontSize: 18.sp,
// //             //           fontWeight: FontWeight.w500,
// //             //           color: Color(0xff111827),
// //             //         ),
// //             //       ),
// //             //       SizedBox(height: 8.h,),
// //             //       Text(
// //             //         "Max. file size 10 MB",
// //             //         style: TextStyle(
// //             //           fontSize: 12.sp,
// //             //           fontWeight: FontWeight.w400,
// //             //           color: Color(0xff6B7280),
// //             //         ),
// //             //       ),
// //             //       // SizedBox(height: 24.h,),
// //             //       Padding(
// //             //         padding: EdgeInsetsDirectional.only(start: 16,end: 16,top:24,bottom: 20),
// //             //         child: FilledButton(
// //             //           onPressed: () {},
// //             //           child: Row(
// //             //             mainAxisSize: MainAxisSize.min,
// //             //             children: [
// //             //               SvgPicture.asset(
// //             //                 "assets/icons/export.svg",
// //             //                 height: 20.h,
// //             //                 width: 20.h,
// //             //                 fit: BoxFit.scaleDown,
// //             //               ),
// //             //               SizedBox(width: 10.w,),
// //             //               Text(
// //             //                 "Add file",
// //             //                 style: TextStyle(
// //             //                   fontSize: 16.sp,
// //             //                   fontWeight: FontWeight.w500,
// //             //                   color: Color(0xff3366FF),
// //             //                 ),
// //             //               ),
// //             //             ],
// //             //           ),
// //             //           style: FilledButton.styleFrom(
// //             //             minimumSize: Size(295.w, 40.h),
// //             //             padding: EdgeInsetsDirectional.only(start: 16,end: 16),
// //             //             side: BorderSide(color: Color(0xff6690FF),),
// //             //             backgroundColor: Color(0xffD6E4FF),
// //             //           ),
// //             //         ),
// //             //       ),
// //             //
// //             //     ],
// //             //   ),
// //             // ),
// //             SizedBox(height: 24.h,),
// //             Container(
// //               height: 74.h,
// //               width: 327.w,
// //               decoration: BoxDecoration(
// //                 border: Border.all(
// //                   color: Color(0xffD1D5DB),
// //                 ),
// //                 borderRadius: BorderRadiusDirectional.circular(8.r),
// //               ),
// //               child: Padding(
// //                 padding:
// //                     EdgeInsetsDirectional.only(start: 16, top: 16, bottom: 16),
// //                 child: Row(
// //                   children: [
// //                     Image.asset(
// //                       "assets/images/PDF Logo.png",
// //                       height: 40.h,
// //                       width: 40.h,
// //                       fit: BoxFit.fill,
// //                     ),
// //                     SizedBox(
// //                       width: 8.w,
// //                     ),
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         Text(
// //                           "UI/UX Designer",
// //                           style: TextStyle(
// //                             fontSize: 14.sp,
// //                             fontWeight: FontWeight.w500,
// //                             color: Color(0xff111827),
// //                           ),
// //                         ),
// //                         SizedBox(
// //                           height: 4.h,
// //                         ),
// //                         Text(
// //                           "CV.pdf 300KB",
// //                           style: TextStyle(
// //                             fontSize: 12.sp,
// //                             fontWeight: FontWeight.w400,
// //                             color: Color(0xff111827),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(width: 70.w),
// //                     SvgPicture.asset(
// //                       "assets/icons/edit-2.svg",
// //                       width: 24.h,
// //                       height: 24.h,
// //                       fit: BoxFit.scaleDown,
// //                     ),
// //                     SvgPicture.asset(
// //                       "assets/icons/close-circle.svg",
// //                       width: 24.h,
// //                       height: 24.h,
// //                       fit: BoxFit.scaleDown,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 16.h,),
// //             PdfContainer(
// //               pdfImage: "assets/images/PDF Logo.png",
// //               headText: "3D Designer",
// //               subText: "CV.pdf 300KB",
// //               editImage: "assets/icons/edit-2.svg",
// //               closeImage: "assets/icons/close-circle.svg",
// //             ),
// //             SizedBox(height: 16.h,),
// //             Container(
// //               height: 74.h,
// //               width:327.w,
// //               decoration: BoxDecoration(
// //                 border: Border.all(
// //                   color: Color(0xffD1D5DB),
// //                 ),
// //                 borderRadius: BorderRadiusDirectional.circular(8.r),
// //               ),
// //               child: Padding(
// //                 padding:EdgeInsetsDirectional.only(start: 16,top: 16,bottom: 16),
// //                 child: Row(
// //                   children: [
// //                     Image.asset(
// //                       "assets/images/PDF Logo.png",
// //                       height: 40.h,
// //                       width: 40.h,
// //                       fit: BoxFit.fill,
// //                     ),
// //                     SizedBox(width: 8.w,),
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         Text(
// //                           "Graphik Designer",
// //                           style: TextStyle(
// //                             fontSize: 14.sp,
// //                             fontWeight: FontWeight.w500,
// //                             color: Color(0xff111827),
// //                           ),
// //                         ),
// //                         SizedBox(height: 4.h,),
// //                         Text(
// //                           "CV.pdf 300KB",
// //                           style: TextStyle(
// //                             fontSize: 12.sp,
// //                             fontWeight: FontWeight.w400,
// //                             color: Color(0xff111827),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(width: 60.w),
// //                     SvgPicture.asset(
// //                       "assets/icons/edit-2.svg",
// //                       width: 24.h,
// //                       height: 24.h,
// //                       fit: BoxFit.scaleDown,
// //                     ),
// //                     SvgPicture.asset(
// //                       "assets/icons/close-circle.svg",
// //                       width: 24.h,
// //                       height: 24.h,
// //                       fit: BoxFit.scaleDown,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
//
//
//
// // import 'dart:io';
// //
// // import 'package:file_picker/file_picker.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:path/path.dart';
// //
// // class PortfolioView extends StatefulWidget {
// //   const PortfolioView({Key? key}) : super(key: key);
// //
// //   @override
// //   State<PortfolioView> createState() => _PortfolioViewState();
// // }
// //
// // class _PortfolioViewState extends State<PortfolioView> {
// //   File? selectedFile;
// //
// //   Future<void> pickAndUploadFile() async {
// //     FilePickerResult? result = await FilePicker.platform.pickFiles(
// //       type: FileType.custom,
// //       allowedExtensions: ['pdf'],
// //     );
// //     if (result != null) {
// //       setState(() {
// //         selectedFile = File(result.files.single.path!);
// //       });
// //       await uploadFile(selectedFile!);
// //     } else {
// //
// //     }
// //   }
// //
// //   Future<void> uploadFile(File file) async {
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xffFFFFFF),
// //     appBar: AppBar(
// //         title: Text(
// //           "Edite Profile",
// //           style: TextStyle(
// //             fontSize: 20.sp,
// //             fontWeight: FontWeight.w500,
// //             color: Color(0xff111827),
// //           ),
// //         ),
// //         leading: IconButton(
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //           icon: Icon(
// //             Icons.arrow_back,
// //             color: Color(0xff111827),
// //           ),
// //         ),
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //       ),
// //       body: ListView(
// //         physics: const BouncingScrollPhysics(),
// //         children: [
// //           SafeArea(
// //             child: Padding(
// //               padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   SizedBox(
// //                     height: 12.h,
// //                   ),
// //                   Text("Add portfolio here",style: TextStyle(color: const Color(0xff111827),fontFamily: "SFPRODISPLAYMEDIUM",fontSize: 20.sp,fontWeight:FontWeight.w500 ),),
// //                   SizedBox(height: 16.h),
// //                   Column(
// //                     children: [
// //                       GestureDetector(
// //                           child:Image.asset("assets/images/document-upload.png"),
// //                           onTap: () {
// //                             pickAndUploadFile();
// //                           }
// //                       ),selectedFile!=null?
// //                       Container(
// //                         width: 327.w,
// //                         height: 74.h,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(8.r),
// //                           border: Border.all(color: const Color(0xffD1D5DB)),
// //                         ),
// //                         child: Padding(
// //                           padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 16.w),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               Image.asset("assets/images/Vector.svg"),
// //                               Column(
// //                                 children: [
// //                                   SizedBox(height: 4.h),
// //                                   Text(selectedFile != null ? basename(selectedFile!.path) : ""),
// //                                 ],
// //                               ),
// //                               Row(
// //                                 children: [
// //                                   GestureDetector(
// //                                     onTap: () {
// //                                       pickAndUploadFile();
// //                                     },
// //                                     child: SvgPicture.asset("assets/icons/edit-2.svg"),
// //                                   ),
// //                                   SizedBox(width: 8.w),
// //                                   GestureDetector(
// //                                     onTap: () {
// //                                       setState(() {
// //                                         selectedFile = null;
// //                                       });
// //                                     },
// //                                     child: SvgPicture.asset("assets/icons/close-circle.svg"),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ):SizedBox.shrink()
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// }
//
//
//
//
//


import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  List<File> selectedFiles = [];

  Future<void> pickAndUploadFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: true,
    );
    if (result != null) {
      setState(() {
        selectedFiles.addAll(result.paths.map((path) => File(path!)));
      });
    } else {
    }
  }

  Future<void> changeFile(File currentFile) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      setState(() {
        selectedFiles[selectedFiles.indexOf(currentFile)] = File(result.files.single.path!);
      });
    } else {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
    appBar: AppBar(
        title: Text(
          "Edite Profile",
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "Add portfolio here",
                    style: TextStyle(
                      color: const Color(0xff111827),
                      fontFamily: "SFPRODISPLAYMEDIUM",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Column(
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(start: 24,end: 24,bottom: 24),
                          child: SvgPicture.asset("assets/images/Upload document.svg"),
                        ),
                        onTap: () {
                          pickAndUploadFiles();
                        },
                      ),
                      SizedBox(height: 5.h),
                      Column(
                        children: selectedFiles.asMap().entries.map((entry) {
                          final file = entry.value;

                          return Column(
                            children: [
                              SizedBox(height: 5.h),
                              Container(
                                width: 327.w,
                                height: 74.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: const Color(0xffD1D5DB)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 16.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset("assets/images/Vector.svg"),
                                      Column(
                                        children: [
                                          SizedBox(height: 4.h),
                                          Text(basename(file.path)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              changeFile(file);
                                            },
                                            child: SvgPicture.asset("assets/images/edit-2.svg"),
                                          ),
                                          SizedBox(width: 8.w),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedFiles.remove(file);
                                              });
                                            },
                                            child: SvgPicture.asset("assets/images/close-circle.svg"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}