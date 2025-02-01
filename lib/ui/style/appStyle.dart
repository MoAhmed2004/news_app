import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/main.dart';
import 'package:news/ui/style/appColor.dart';

class AppStyle {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.grey,
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30.sp,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      backgroundColor: AppColors.lightPrimary,
      elevation: 0,
      centerTitle: true,

      titleTextStyle: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 22.sp
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightPrimary,
    primary: AppColors.lightPrimary,
    )
  );
}