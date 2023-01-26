import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/timetable_content/element/timetable_content_case_of_applied_class.dart';
import 'package:vantan_connect/domain/class_time.dart';
import '../../shered/single/space_box.dart';
import 'element/element/timetable_header_column.dart';
import 'hook.dart';

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
                SpaceBox(height: 45.sp),
                for (ClassTime classStartTime in classStartTimeList)
                  UnSelectedTimeTableHeaderColumn(
                    start: classStartTime.start,
                    timeTable: 1,
                    end: classStartTime.end,
                  ),
              ],
            ),
            SpaceBox(width: 9.sp),
            // 月〜金まで日程の表示を繰り返す
            TimetableContentCaseOfAppliedClass(),
          ],
        ),
      ),
    );
  }
}
