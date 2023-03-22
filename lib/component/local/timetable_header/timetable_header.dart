import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/single/color/color.dart';
import '../../shared/single/text_style/text_style.dart';

class TimetableHeader extends StatelessWidget {
  const TimetableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.sp,
      height: 96.sp,
      padding: EdgeInsets.only(top: 55, left: 20),
      child: Row(
        children: [
          Text('時間割', style: header(onSurface)),
        ],
      ),
    );
  }
}
