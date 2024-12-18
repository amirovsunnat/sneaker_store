import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneaker_store/screens/details_screen.dart';
import 'package:sneaker_store/screens/get_started_4_screen.dart';
import 'package:sneaker_store/screens/get_started_screen.dart';
import 'package:sneaker_store/screens/log_in.dart';
import 'package:sneaker_store/screens/splash_screen.dart';
import 'package:sneaker_store/utils/app_colors.dart';


void main() {
  runApp(const SneakerStoreApp());
}

class SneakerStoreApp extends StatelessWidget {
  const SneakerStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sneaker Store',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
          useMaterial3: true,
        ),
        home: const DetailsScreen(),


      ),
    );
  }
}
