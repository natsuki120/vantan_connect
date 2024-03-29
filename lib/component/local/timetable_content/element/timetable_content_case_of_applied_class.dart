import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/color/color.dart';
import '../../../shared/single/space_box/space_box.dart';
import '/domain/class/class.dart';
import '/component/local/lesson_detail_body/hooks.dart';
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
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classRoom: '',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: '昼休憩', classRoom: ''),
              color: primary10,
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'デザインシンキング',
                classDocumentList: designThinkingDocumentListInAP,
                classImgUrl: 'design-thinking.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
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
            TimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: '昼休憩'),
              color: primary10,
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'アートシンキング',
                classDocumentList: artThinkingDocumentListInAP,
                classImgUrl: 'art-thinking.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
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
            TimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: 'S校サポート'),
              color: primary10,
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInAP,
                classImgUrl: 'marketing.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'マーケティング',
                classDocumentList: marketingDocumentListInAP,
                classImgUrl: 'marketing.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: '昼休憩'),
              color: primary10,
            ),
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
              color: primary10,
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInAP,
                classImgUrl: 'passport.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'ITパスポート',
                classDocumentList: ITPassportDocumentListInAP,
                classImgUrl: 'passport.png',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInAP,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: '昼休憩'),
              color: primary10,
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'Webデザイン',
                classDocumentList: WebDesignDocumentListInAP,
                classImgUrl: 'wordpress-g1155af3be_1920.jpg',
              ),
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
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                name: 'プログラミング',
                classDocumentList: programmingDocumentListInAP,
                classImgUrl: 'programming.jpg',
              ),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: '昼休憩'),
              color: primary10,
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: 'HR', classImgUrl: 'home_room.jng'),
              color: primary10,
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
