import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/lesson_detail_body/hooks.dart';
import 'package:vantan_connect/component/local/timetable_content/element/element/lesson.dart';
import '../../../../domain/class/class.dart';
import '../../../shered/single/space_box.dart';
import 'element/timetable_header_row.dart';

class TimetableContentCaseOfAppliedClass extends StatelessWidget {
  const TimetableContentCaseOfAppliedClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '月'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: '昼休憩', classRoom: '')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInAP,
                classImgUrl: 'design-thinking.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInAP,
                classImgUrl: 'design-thinking.jpg',
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
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: '昼休憩')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'アートシンキング',
                classDocumentList: artThinkingDocumentListInAP,
                classImgUrl: 'art-thinking.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'アートシンキング',
                classDocumentList: artThinkingDocumentListInAP,
                classImgUrl: 'art-thinking.png',
              ),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'S高レポート')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInAP,
                classImgUrl: 'marketing.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInAP,
                classImgUrl: 'marketing.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: '昼休憩')),
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
            Lesson(
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInAP,
                classImgUrl: 'passport.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInAP,
                classImgUrl: 'passport.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInAP,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: '昼休憩')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInAP,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
              ),
            ),
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
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: '昼休憩')),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'HR')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
