import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/single/color.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';
import 'package:vantan_connect/component/shered/single/test_style.dart';

class TimetableHeader extends StatelessWidget {
  const TimetableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.sp,
      height: 96.sp,
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        children: [
          Text('時間割', style: header(onSurface)),
          Spacer(),
          Icon(Icons.settings),
          SpaceBox(width: 27.sp),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
