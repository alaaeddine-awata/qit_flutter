import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'resources.dart';

ThemeData getApplicationLightTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorManager.primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(primary: ColorManager.primary),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      centerTitle: true,
      titleTextStyle: getBoldStyle(color: Colors.white,fontSize: 18.sp),
      elevation: 0,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.r),bottomLeft: Radius.circular(30.r))
      ),
      iconTheme: IconThemeData(size: 30.sp,color: ColorManager.secondary),
      actionsIconTheme: IconThemeData(size: 30.sp,color: ColorManager.secondary),
    ),

    textTheme: TextTheme(
      displayLarge: getBoldStyle(
        color: ColorManager.primary,
        fontSize: 24.sp,
      ),
      displayMedium: getBoldStyle(color: Colors.black),
      labelLarge: getRegularStyle(color: Colors.black, fontSize: 23.sp),
      bodySmall: getSemiBoldStyle(
        color: ColorManager.textGrey,
        fontSize: 12.sp,
      ),
      bodyMedium: getRegularStyle(color: ColorManager.primary, fontSize: 14.sp),
      titleMedium: getRegularStyle(
        color: ColorManager.grey,
        fontSize: 16.sp,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.textGrey,
        fontSize: 15.sp,
      ),
      displaySmall:
      getSemiBoldStyle(color: Colors.white,fontSize: 20.sp),
      headlineMedium:
      getSemiBoldStyle(color: ColorManager.primary,fontSize: 20.sp),
      headlineSmall: getRegularStyle(color: ColorManager.primary.withOpacity(.62),fontSize: 14.sp),
      titleLarge: getSemiBoldStyle(
          color: ColorManager.primary, fontSize: 28.sp),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(317.w, 48.h),
            textStyle:
            getSemiBoldStyle(color: Colors.white, fontSize: 20.sp),
            backgroundColor: ColorManager.primary,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r)))),

    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: Colors.grey,
      suffixIconColor: ColorManager.grey,
      contentPadding: EdgeInsets.symmetric(
          horizontal: 8.w, vertical: 20.h),
      // hint style
      hintStyle: getSemiBoldStyle(
          color: ColorManager.textGrey, fontSize: 12.sp),

      // label style
      labelStyle: getRegularStyle(color: ColorManager.textGrey),
      // error style
      errorStyle: getRegularStyle(color: Colors.red),

      // enabled border
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorManager.lightGrey,)),

      // focused border
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary),
      ),
    ),

  );
}
