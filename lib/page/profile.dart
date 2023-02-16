import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/border_line/border_line.dart';
import 'package:vantan_connect/component/shared/single/color/color.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'package:vantan_connect/component/shared/single/text_style/text_style.dart';

class Profile extends ConsumerWidget {
  const Profile({Key? key, required this.studentName}) : super(key: key);

  final String studentName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 53.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('名前', style: caption1Bold(midEmphasis)),
              SpaceBox(height: 15.sp),
              Text(studentName, style: bodyRegular(highEmphasis)),
              SpaceBox(height: 15.sp),
              BorderLine(),
            ],
          ),
          SpaceBox(height: 25.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('コース', style: caption1Bold(midEmphasis)),
              SpaceBox(height: 15.sp),
              Text('基礎Cクラス', style: bodyRegular(highEmphasis)),
              SpaceBox(height: 15.sp),
              BorderLine(),
            ],
          ),
        ],
      ),
    );
  }
}
