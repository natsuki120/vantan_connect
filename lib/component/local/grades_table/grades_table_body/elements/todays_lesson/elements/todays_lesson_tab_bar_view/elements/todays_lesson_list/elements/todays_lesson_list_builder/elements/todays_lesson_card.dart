import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/space_box.dart';

import '../../../../../../../../../../../../shared/single/color.dart';
import '../../../../../../../../../../../../shared/single/text_style.dart';
import '../../../../../../../../grades_table_shared/grades_table_elements_card.dart';

class TodaysLessonCard extends StatelessWidget {
  TodaysLessonCard(
      {super.key,
      required this.className,
      required this.attendanceClassmate,
      required this.tardyClassmate,
      required this.otherClassmate});
  final String className;
  final String attendanceClassmate;
  final String tardyClassmate;
  final String otherClassmate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.sp),
      child: Row(
        children: [
          SizedBox(
            //TODO: ここに写真予定
            height: 80.sp,
            width: 80.sp,
            //decoration: BoxDecoration(),
            child: Placeholder(),
          ),
          SizedBox(width: 12.sp),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 190.sp),
                      child: Text(
                        maxLines: 1,
                        className,
                        style: callOutBold(black),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SpaceBox.width(),
                    GradesTableElementsCard(elementText: '第1回目')
                  ],
                ),
                SpaceBox.height(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('出席', style: caption1Regular(lowEmphasis)),
                        Text('$attendanceClassmate人',
                            style: headerMedium(midEmphasis))
                      ],
                    ),
                    SizedBox(width: 60),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('欠席', style: caption1Regular(lowEmphasis)),
                        Text('$tardyClassmate人',
                            style: headerMedium(midEmphasis)),
                      ],
                    ),
                    SizedBox(width: 60),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('その他', style: caption1Regular(lowEmphasis)),
                        Text('$otherClassmate人',
                            style: headerMedium(midEmphasis)),
                      ],
                    ),
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
