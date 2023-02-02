import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/single/color.dart';
import '../../shared/single/test_style.dart';

class RegisteredLessonByStudentMark extends StatelessWidget {
  const RegisteredLessonByStudentMark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49.sp,
      height: 21.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: secondary,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Text(
        '履修中',
        style: caption1Bold(onPrimary),
      ),
    );
  }
}
