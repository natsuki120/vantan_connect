import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shered/single/color.dart';
import '../../shered/single/lesson.dart';
import '../../shered/single/space_box.dart';
import 'element/timetable_header_column.dart';
import 'element/timetable_header_row.dart';

class TimeTableContent extends StatelessWidget {
  const TimeTableContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                ListView.builder(itemBuilder: (context, index) {
                  return Column(
                    children: [
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
                  );
                }),
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
      ),
    );
  }
}
