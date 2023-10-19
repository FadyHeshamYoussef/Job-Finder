import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/screens/create_account/state.dart';

import '../../core/logic/helper_method.dart';
import '../category_screen/view.dart';

class CreateCubit extends Cubit<CreateStates> {
  CreateCubit() : super(CreateStates());
  final formkey = GlobalKey<FormState>();
  int  currentPage = 0;
  late String _username;
  late String _email;
  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;
  bool isFailed = false;

  creat(context) async {
    isLoading = true;
    try {
      final respone = await Dio().post(
        "https://project2.amit-learning.com/api/auth/register",
        data: {
          "name": userNameController.text,
          "email": emailController.text,
          "password": passwordController.text,
        },
      );
      print(respone.data);
      emit(CreateSuccessState());
    } on DioException {
      isFailed = true;
    }
    isLoading = false;
    emit(CreateFailedState());

    isFailed
        ? ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Failed!"),
        duration: Duration(seconds: 20),
      ),
    )
        : navigateTo(context, CategoryWorkView());
  }
}