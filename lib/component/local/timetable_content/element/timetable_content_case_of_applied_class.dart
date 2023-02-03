import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/single/color.dart';
import '../../../../domain/class/class.dart';
import '../../../shered/single/space_box.dart';
import '../../../shered/single/test_style.dart';
import '../../lesson_detail_body/hooks.dart';
import 'element/lesson.dart';
import 'element/timetable_header_column.dart';
import 'element/timetable_header_row.dart';

class TimetableContentCaseOfAppliedClass extends StatelessWidget {
  const TimetableContentCaseOfAppliedClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                SpaceBox(width: 40.sp),
                TimetableHeaderRow(weakDay: '月'),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                UnSelectedTimeTableHeaderColumn(
                  start: '9:30',
                  timeTable: 1,
                  end: '10:20',
                ),
                SpaceBox(width: 9.sp),
                Lesson(
                  classInfo: Class(
                      name: 'プログラミング',
                      classRoom: '',
                      classDocumentList: programmingDocumentListInAP,
                      classImgUrl: 'programming.jpg',
                      weakDay: '月曜日'),
                ),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                UnSelectedTimeTableHeaderColumn(
                  start: '10:30',
                  timeTable: 2,
                  end: '11:20',
                ),
                SpaceBox(width: 9.sp),
                Lesson(
                  classInfo: Class(
                      name: 'プログラミング',
                      classRoom: '',
                      classDocumentList: programmingDocumentListInAP,
                      classImgUrl: 'programming.jpg',
                      weakDay: '月曜日'),
                ),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                UnSelectedTimeTableHeaderColumn(
                  start: '11:30',
                  timeTable: 3,
                  end: '12:20',
                ),
                SpaceBox(width: 9.sp),
                Lesson(
                  classInfo: Class(
                      name: 'プログラミング',
                      classRoom: '',
                      classDocumentList: programmingDocumentListInAP,
                      classImgUrl: 'programming.jpg',
                      weakDay: '月曜日'),
                ),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                SpaceBox(width: 3.sp),
                Text('休憩', style: caption1Regular(lowEmphasis)),
                SpaceBox(width: 13.sp),
                Container(width: 65.sp, height: 28.sp, color: surfaceTertiary),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                UnSelectedTimeTableHeaderColumn(
                  start: '13:30',
                  timeTable: 4,
                  end: '14:20',
                ),
                SpaceBox(width: 9.sp),
                Lesson(
                  classInfo: Class(
                      name: 'デザインシンキング',
                      classDocumentList: designThinkingDocumentListInAP,
                      classImgUrl: 'design-thinking.jpg',
                      weakDay: '月曜日'),
                ),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                UnSelectedTimeTableHeaderColumn(
                  start: '14:30',
                  timeTable: 5,
                  end: '15:20',
                ),
                SpaceBox(width: 9.sp),
                Lesson(
                  classInfo: Class(
                      name: 'デザインシンキング',
                      classDocumentList: designThinkingDocumentListInAP,
                      classImgUrl: 'design-thinking.jpg',
                      weakDay: '月曜日'),
                ),
              ],
            ),
            SpaceBox(height: 4.sp),
            Row(
              children: [
                UnSelectedTimeTableHeaderColumn(
                  start: '15:30',
                  timeTable: 6,
                  end: '16:20',
                ),
                SpaceBox(width: 9.sp),
                Nomal(),
              ],
            ),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '火曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '火曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '火曜日'),
            ),
            SpaceBox(height: 4.sp),
            Container(width: 65.sp, height: 28.sp, color: surfaceTertiary),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInAP,
                  classImgUrl: 'art-thinking.png',
                  weakDay: '火曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInAP,
                  classImgUrl: 'art-thinking.png',
                  weakDay: '火曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: '特別授業',
                  classDocumentList: artThinkingDocumentListInAP,
                  classImgUrl: 'art-thinking.png',
                  weakDay: '火曜日'),
            ),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'S高レポート')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'マーケティング',
                  classDocumentList: marketingDocumentListInAP,
                  classImgUrl: 'marketing.png',
                  weakDay: '水曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'マーケティング',
                  classDocumentList: marketingDocumentListInAP,
                  classImgUrl: 'marketing.png',
                  weakDay: '水曜日'),
            ),
            SpaceBox(height: 4.sp),
            Container(width: 65.sp, height: 28.sp, color: surfaceTertiary),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Nomal(),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '木'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInAP,
                  classImgUrl: 'passport.png',
                  weakDay: '木曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInAP,
                  classImgUrl: 'passport.png',
                  weakDay: '木曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInAP,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  weakDay: '木曜日'),
            ),
            SpaceBox(height: 4.sp),
            Container(width: 65.sp, height: 28.sp, color: surfaceTertiary),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInAP,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  weakDay: '木曜日'),
            ),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Nomal(),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '金'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '金曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '金曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '金曜日'),
            ),
            SpaceBox(height: 4.sp),
            Container(width: 65.sp, height: 28.sp, color: surfaceTertiary),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'HR')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Nomal(),
          ],
        ),
      ],
    );
  }
}
