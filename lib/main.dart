import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/screens/create_account/cubit.dart';
import 'package:job_finder/screens/login_screen/cubit.dart';
import 'package:job_finder/screens/slapsh_screen/view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/on_boarding/view.dart';

late SharedPreferences prefs;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit(),

        ),
        BlocProvider(create: (context) => CreateCubit(),

        ),

      ],
      child: ScreenUtilInit(
        //designSize: const Size(701.31,700),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: "SFPRODISPLAYBLACKITALIC",
            ),
          home: PageView(
               children: [

                   SplashScreenView(),
                OnBoardingScreenView(),




               ],
          ),
            );
        },
      ),
    );
  }
}





