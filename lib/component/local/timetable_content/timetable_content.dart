import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/timetable_content/element/timetable_content_case_of_basic_c.dart';
import '../../shared/single/space_box/space_box.dart';
import 'element/element/timetable_header_column.dart';
import 'element/timetable_content_case_of_basic_c.dart';
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
            Expanded(
              child: Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: classStartTimeList.length,
                      itemBuilder: (context, index) {
                        final classStartTime = classStartTimeList[index];
                        return Column(
                          children: [
                            UnSelectedTimeTableHeaderColumn(
                              start: classStartTime.start,
                              timeTable: index + 1,
                              end: classStartTime.end,
                            ),
                            SpaceBox(height: 2.sp),
                          ],
                        );
                      }),
                ],
              ),
            ),
            SpaceBox(width: 9.sp),
            // 月〜金まで日程の表示を繰り返す
            TimetableContentCaseOfBasicC(),
          ],
        ),
      ),
    );
  }
}
