import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../domain/class/class.dart';
import '../../../../../../../../page/lesson_detail_page_in_result_page.dart';
import '../../../../../../../shared/single/navigator/navigator.dart';
import '../../../../../../../shared/single/color/color.dart';
import '../../../../../../../shared/single/space_box/space_box.dart';
import '../../../../../../../shared/single/text_style/text_style.dart';
import '../../../grades_table_shared/grades_table_elements_card.dart';

class TodaysLessonCard extends StatelessWidget {
  TodaysLessonCard(
      {super.key,
      required this.classInfo,
      required this.attendanceClassmate,
      required this.tardyClassmate,
      required this.otherClassmate});
  final Class classInfo;
  final Widget attendanceClassmate;
  final Widget tardyClassmate;
  final Widget otherClassmate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigatorPush(context,
          page: LessonDetailPageInResultPage(classInfo: classInfo)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.sp),
        child: Row(
          children: [
            SizedBox(
              height: 80.sp,
              width: 80.sp,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'images/${classInfo.classImgUrl}',
                  fit: BoxFit.fill,
                ),
              ),
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
                          classInfo.name,
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
                          attendanceClassmate,
                        ],
                      ),
                      SizedBox(width: 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('欠席', style: caption1Regular(lowEmphasis)),
                          tardyClassmate,
                        ],
                      ),
                      SizedBox(width: 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('その他', style: caption1Regular(lowEmphasis)),
                          otherClassmate,
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
