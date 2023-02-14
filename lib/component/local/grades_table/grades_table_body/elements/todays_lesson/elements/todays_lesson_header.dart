import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../../../../../../shared/single/space_box/space_box.dart';
import '../../../../../../shared/single/color/color.dart';
import '../../../../../../shared/single/text_style/text_style.dart';
import '../../../../grades_table_modal/grades_table_modal_show_todays_lessons.dart';

class TodaysLessonHeader extends HookWidget {
  TodaysLessonHeader({
    super.key,
    this.isModal = false,
    this.todaysLessonTabController,
  });
  final bool isModal;
  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ja');
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
                  Text(
                    '${DateTime.now().month}月${DateTime.now().day}日',
                    style: caption1Bold(lowEmphasis),
                  ),
                  SpaceBox(width: 5.w),
                  Text(
                    '${DateFormat.EEEE('ja').format(DateTime.now())}',
                    style: caption1Bold(lowEmphasis),
                  ),
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
