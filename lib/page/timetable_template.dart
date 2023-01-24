import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/organism/lesson.dart';
import 'package:vantan_connect/new_atomic_design/organism/time_table_header_column.dart';
import 'package:vantan_connect/new_atomic_design/organism/timetable_header_row.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class TimeTableTemplate extends StatelessWidget {
  const TimeTableTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceBox(height: 47.sp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: OriginalText(text: '時間割', textStyle: header(onSurface)),
          ),
          SpaceBox(height: 30.sp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SpaceBox(height: 50),
                    UnSelectedTimeTableHeaderColumn(
                      start: '9:30',
                      timeTable: 1,
                      end: '10:30',
                    ),
                    SpaceBox(height: 3.sp),
                    UnSelectedTimeTableHeaderColumn(
                      start: '9:30',
                      timeTable: 1,
                      end: '10:30',
                    ),
                    SpaceBox(height: 3.sp),
                    UnSelectedTimeTableHeaderColumn(
                      start: '9:30',
                      timeTable: 1,
                      end: '10:30',
                    ),
                    SpaceBox(height: 3.sp),
                    UnSelectedTimeTableHeaderColumn(
                      start: '9:30',
                      timeTable: 1,
                      end: '10:30',
                    ),
                    SpaceBox(height: 3.sp),
                    UnSelectedTimeTableHeaderColumn(
                      start: '9:30',
                      timeTable: 1,
                      end: '10:30',
                    ),
                    SpaceBox(height: 3.sp),
                    UnSelectedTimeTableHeaderColumn(
                      start: '9:30',
                      timeTable: 1,
                      end: '10:30',
                    ),
                    SpaceBox(height: 3.sp),
                  ],
                ),
                SpaceBox(width: 9.sp),
                Column(
                  children: [
                    UnSelectedTimetableHeaderRow(weakDay: '月'),
                    SpaceBox(height: 4.sp),
                    Container(
                      width: 65.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        color: surfaceSecondary.withOpacity(0.05),
                      ),
                    ),
                    SpaceBox(height: 4.sp),
                    Container(
                      width: 65.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        color: surfaceSecondary.withOpacity(0.05),
                      ),
                    ),
                    SpaceBox(height: 4.sp),
                    Container(
                      width: 65.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        color: surfaceSecondary.withOpacity(0.05),
                      ),
                    ),
                    SpaceBox(height: 4.sp),
                    Container(
                      width: 65.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        color: surfaceSecondary.withOpacity(0.05),
                      ),
                    ),
                    SpaceBox(height: 4.sp),
                    Container(
                      width: 65.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        color: surfaceSecondary.withOpacity(0.05),
                      ),
                    ),
                    SpaceBox(height: 4.sp),
                    Container(
                      width: 65.sp,
                      height: 96.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        color: surfaceSecondary.withOpacity(0.05),
                      ),
                    ),
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
                    Nomal(),
                    SpaceBox(height: 4.sp),
                    Lesson(className: 'UI/UX', classroom: '601'),
                    SpaceBox(height: 4.sp),
                    Lesson(className: 'UI/UX', classroom: '601'),
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
                    Nomal(),
                    SpaceBox(height: 4.sp),
                    Nomal(),
                    SpaceBox(height: 4.sp),
                    Nomal(),
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
                    UnSelectedTimetableHeaderRow(weakDay: '木'),
                    SpaceBox(height: 4.sp),
                    Lesson(className: 'UI/UX', classroom: '601'),
                    SpaceBox(height: 4.sp),
                    Lesson(className: 'UI/UX', classroom: '601'),
                    SpaceBox(height: 4.sp),
                    Nomal(),
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
                    UnSelectedTimetableHeaderRow(weakDay: '金'),
                    SpaceBox(height: 4.sp),
                    Lesson(className: 'UI/UX', classroom: '601'),
                    SpaceBox(height: 4.sp),
                    Lesson(className: 'UI/UX', classroom: '601'),
                    SpaceBox(height: 4.sp),
                    Nomal(),
                    SpaceBox(height: 4.sp),
                    Nomal(),
                    SpaceBox(height: 4.sp),
                    Nomal(),
                    SpaceBox(height: 4.sp),
                    Nomal(),
                    SpaceBox(height: 4.sp),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
