import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../domain/class/class.dart';
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
            Lesson(classInfo: Class(name: 'S校レポート')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'マーケティング')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'マーケティング')),
            SpaceBox(height: 4.sp),
            Nomal(),
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
            UnSelectedTimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'Webデザイン')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'Webデザイン')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'ITパスポート')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'ITパスポート')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'HR')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '木'),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'アートシンキング')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'アートシンキング')),
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
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'デザインシンキング')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'デザインシンキング')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'プログラミング', classRoom: '')),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
