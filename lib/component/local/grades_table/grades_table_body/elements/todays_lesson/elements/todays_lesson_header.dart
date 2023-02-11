import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/single/space_box/space_box.dart';
import '../../../../../../shared/single/color/color.dart';
import '../../../../../../shared/single/text_style/text_style.dart';
import '../../../../grades_table_modal/grades_table_modal_show_todays_lessons.dart';

class TodaysLessonHeader extends StatelessWidget {
  TodaysLessonHeader({
    super.key,
    required this.date,
    required this.day,
    this.isModal = false,
    this.todaysLessonTabController,
  });
  final String date;
  final String day;
  final bool isModal;
  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(date, style: caption1Bold(lowEmphasis)),
                  SpaceBox(width: 5.w),
                  Text(day, style: caption1Bold(lowEmphasis)),
                ],
              ),
              Text('今日の授業', style: title2Bold(black)),
            ],
          ),
          Spacer(),
          isModal
              ? Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: midEmphasis),
                      borderRadius: BorderRadius.circular(100.sp)),
                  child: IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    icon: Icon(
                      Icons.clear,
                      color: midEmphasis,
                    ),
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return GradesTableModalShowTodaysLessons(
                                  todaysLessonTabController:
                                      todaysLessonTabController,
                                  date: '3/21',
                                  day: '火曜日',
                                );
                              },
                            ),
                          );
                        },
                        child: Text(
                          '全て表示',
                          style: headLineRegular(lowEmphasis),
                        )),
                  ],
                )
        ],
      ),
    );
  }
}
