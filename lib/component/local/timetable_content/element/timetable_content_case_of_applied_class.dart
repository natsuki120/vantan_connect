import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/single/token/space_box/space_box.dart';
import '../../lesson_detail_body/hooks/hooks.dart';
import '/domain/class/class.dart';
import 'element/lesson.dart';
import 'element/timetable_header_row.dart';

class TimetableContentCaseOfAppliedClass extends StatelessWidget {
  const TimetableContentCaseOfAppliedClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            TimetableHeaderRow(weakDay: '月'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '月曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '月曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInAP,
                  classImgUrl: 'programming.jpg',
                  weakDay: '月曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: '昼休憩', classRoom: '')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInAP,
                  classImgUrl: 'design-thinking.jpg',
                  weakDay: '月曜日'),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInAP,
                  classImgUrl: 'design-thinking.jpg',
                  weakDay: '月曜日'),
            ),
            SpaceBox(height: 4.sp),
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
            Lesson(classInfo: Class(name: '昼休憩')),
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
            Lesson(classInfo: Class(name: '昼休憩')),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
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
            Lesson(classInfo: Class(name: '昼休憩')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInAP,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  weakDay: '木曜日'),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
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
            Lesson(classInfo: Class(name: '昼休憩')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'HR')),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
