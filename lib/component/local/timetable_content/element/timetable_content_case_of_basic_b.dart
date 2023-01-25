import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shered/single/space_box.dart';
import 'element/lesson.dart';
import 'element/timetable_header_row.dart';

class TimetableContentCaseOfBasicA extends StatelessWidget {
  const TimetableContentCaseOfBasicA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '月'),
            SpaceBox(height: 4.sp),
            Lesson(className: 'S高サポート', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'デザインシンキング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'デザインシンキング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: '昼休憩', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: '昼休憩', classroom: ''),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(className: 'ITパスポート', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'ITパスポート', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: '昼休憩', classroom: ''),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '木'),
            SpaceBox(height: 4.sp),
            Lesson(className: 'Webデザイン', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'Webデザイン', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: '’昼休憩', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'アートシンキング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'アートシンキング', classroom: ''),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '金'),
            SpaceBox(height: 4.sp),
            Lesson(className: 'HR', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'プログラミング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: '昼休憩', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'マーケティング', classroom: ''),
            SpaceBox(height: 4.sp),
            Lesson(className: 'マーケティング', classroom: ''),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
