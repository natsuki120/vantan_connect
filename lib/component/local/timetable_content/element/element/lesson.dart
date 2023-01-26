import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../../../shered/single/color.dart';

class Lesson extends StatelessWidget {
  const Lesson({
    Key? key,
    required this.className,
    required this.classroom,
  }) : super(key: key);

  final String classroom;
  final String className;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.sp,
      height: 96.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: primary5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SpaceBox(height: 10.sp),
          Flexible(
            child: Text(
              className,
              style: caption1Regular(highEmphasis),
              maxLines: 1,
            ),
          ),
          SpaceBox(height: 44.sp),
          Container(
            width: 49.sp,
            height: 21.sp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.sp),
              color: surfaceSecondary.withOpacity(0.05),
            ),
            child: Text(
              classroom,
              style: caption2Regular(midEmphasis.withOpacity(0.7)),
            ),
          )
        ],
      ),
    );
  }
}

class Nomal extends StatelessWidget {
  const Nomal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.sp,
      height: 96.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: surfaceSecondary.withOpacity(0.05),
      ),
    );
  }
}
