 import 'package:flutter/material.dart';
void navigateTo(context, page,
    {bool keepHistory = true, bool isReplace = false}) {
  if (isReplace) {
    Navigator.pushReplacement(context, PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          FadeTransition(child: page, opacity: animation),
    ),);
  } else {
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              FadeTransition(child: page, opacity: animation),
        ),
            (route) => keepHistory);
  }
}