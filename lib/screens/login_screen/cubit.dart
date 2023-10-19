
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/screens/login_screen/states.dart';

import '../../core/logic/helper_method.dart';
import '../home/view.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStates());

  final formkey = GlobalKey<FormState>();
  final namController = TextEditingController();
  final passwordController = TextEditingController();

  toggleCheckBox(value){
    checkBox = value!;
    emit(ToggleState());
  }
  bool isFailed = false;
  bool checkBox = true;
  bool isLoading = false;
  login(context)async{

    isLoading = true;
   emit(LoginLoadingState());
    try{
      final response = await Dio().post("https://project2.amit-learning.com/api/auth/login",
        data: {
          "email": namController.text,
          "password": passwordController.text,
        },
      );
      print(response.data);
      emit(LoginSuccessState());
    }on DioException {
      isFailed = true;
    }
    isLoading = false;
   emit(LoginFailedState());
    navigateTo(context, HomePageView());
  }
}