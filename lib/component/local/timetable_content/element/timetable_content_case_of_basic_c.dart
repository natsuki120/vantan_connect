import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/lesson_detail_body/hooks.dart';
import '../../../../domain/class/class.dart';
import '../../../shered/single/space_box.dart';
import 'element/lesson.dart';
import 'element/timetable_header_row.dart';

class TimetableContentCaseOfBasicA extends StatelessWidget {
  const TimetableContentCaseOfBasicA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            UnSelectedTimetableHeaderRow(weakDay: '月'),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'S校レポート')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInC,
                classImgUrl: 'marketing.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInC,
                classImgUrl: 'marketing.png',
              ),
            ),
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
            UnSelectedTimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInC,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInC,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming-jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming-jpg',
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
            Lesson(
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInBasicC,
                classImgUrl: 'passport.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInBasicC,
                classImgUrl: 'passport.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'HR')),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
                classInfo: Class(
              name: 'プログラミング',
              classRoom: '',
              classDocumentList: programmingDocumentListInBasicC,
              classImgUrl: 'programming.jpg,',
            )),
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
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'アートシンキング',
                classDocumentList: artThinkingDocumentListInC,
                classImgUrl: 'art-thinking.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'アートシンキング',
                classDocumentList: artThinkingDocumentListInC,
                classImgUrl: 'art-thinking.png',
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
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInBasicC,
                classImgUrl: 'design-thinking.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInBasicC,
                classImgUrl: 'design-thinking.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
