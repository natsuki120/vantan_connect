import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreyBox extends StatelessWidget {
  const GreyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.25),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 165.sp, vertical: 60.sp),
      ),
    );
  }
}
