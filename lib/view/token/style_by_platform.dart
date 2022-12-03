import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FontWeight? fontWeight;
const regular = 'regular';
const medium = 'medium';
const bold = 'bold';

TextStyle header(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 26.sp,
    );
TextStyle headerMedium(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 15.sp,
    );

TextStyle bodyRegular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 16.sp,
    );
TextStyle bodySemiBold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 15.sp,
    );

TextStyle bodyBold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
    );

TextStyle callOutRegular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 15.sp,
    );
TextStyle callOutBold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 15.sp,
    );
TextStyle subHeadLineBold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 13.sp,
    );
TextStyle subHeadLineRegular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 13.sp,
    );

TextStyle bodySmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 12.sp,
    );

TextStyle displayLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 58.sp,
    );
TextStyle displayMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 46.sp,
    );
TextStyle displaySmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 36.sp,
    );

TextStyle headLineBold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
    );
TextStyle headLineRegular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 15.sp,
    );

TextStyle labelLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 14.sp,
    );
TextStyle labelMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 12.sp,
    );
TextStyle labelSmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 10.sp,
    );

TextStyle title1Bold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 26.sp,
    );
TextStyle title1Regular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 26.sp,
    );
TextStyle title2Bold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 20.sp,
    );
TextStyle title2Regular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 20.sp,
    );
TextStyle titleMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 16.sp,
    );
TextStyle titleSmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 14.sp,
    );

TextStyle caption1Bold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 11.sp,
    );
TextStyle caption1Regular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 11.sp,
    );
TextStyle caption2Bold(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 11.sp,
    );
TextStyle caption2Regular(Color color) => TextStyle(
      color: color,
      fontWeight: FontWeight.w300,
      fontSize: 11.sp,
    );
