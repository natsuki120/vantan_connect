import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../domain/class/class.dart';
import '../../../shered/single/space_box.dart';
import '../../lesson_detail_body/hooks.dart';
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
            TimetableHeaderRow(weakDay: '月'),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'S校レポート')),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInC,
                classImgUrl: 'marketing.png',
                weakDay: '月曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInC,
                classImgUrl: 'marketing.png',
                weakDay: '月曜日',
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
            TimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInC,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                weakDay: '火曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInC,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                weakDay: '火曜日',
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
                weakDay: '火曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming-jpg',
                weakDay: '火曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2.sp),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInBasicC,
                classImgUrl: 'passport.png',
                weakDay: '水曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInBasicC,
                classImgUrl: 'passport.png',
                weakDay: '水曜日',
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
                weakDay: '水曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
                classInfo: Class(
              name: 'プログラミング',
              classRoom: '',
              classDocumentList: programmingDocumentListInBasicC,
              classImgUrl: 'programming.jpg,',
              weakDay: '水曜日',
            )),
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
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
                weakDay: '木曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
                weakDay: '木曜日',
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
                weakDay: '木曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'アートシンキング',
                classDocumentList: artThinkingDocumentListInC,
                classImgUrl: 'art-thinking.png',
                weakDay: '木曜日',
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
            TimetableHeaderRow(weakDay: '金'),
            SpaceBox(height: 4.sp),
            Nomal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInBasicC,
                classImgUrl: 'design-thinking.jpg',
                weakDay: '金曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInBasicC,
                classImgUrl: 'design-thinking.jpg',
                weakDay: '金曜日',
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
                weakDay: '金曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInBasicC,
                classImgUrl: 'programming.jpg',
                weakDay: '金曜日',
              ),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
