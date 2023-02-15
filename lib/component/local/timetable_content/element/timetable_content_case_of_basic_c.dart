import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/student/student.dart';
import '../../../shared/single/space_box/space_box.dart';
import '/component/local/lesson_detail_body/hooks.dart';
import '/domain/class/class.dart';
import 'element/lesson.dart';
import 'element/timetable_header_row.dart';

final studentList = <Student>[
  Student(name: '丸山千颯', id: '@maruyama'),
  Student(name: '松田怜士', id: '@matsuda'),
  Student(name: '豊田龍之介', id: '@toyota'),
  Student(name: '山越拓海', id: '@yamagoshi'),
  Student(name: '内藤希心', id: '@naito'),
  Student(name: '山本琉斗', id: '@yamamoto'),
  Student(name: '江口紫音', id: '@eguchi'),
  Student(name: '安西美来', id: '@anzai'),
];

class TimetableContentCaseOfBasicC extends StatelessWidget {
  const TimetableContentCaseOfBasicC({Key? key}) : super(key: key);

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
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'マーケティング',
                  classDocumentList: marketingDocumentListInC,
                  classImgUrl: 'marketing.png',
                  weakDay: '月曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
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
            TimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInC,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  weakDay: '火曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInC,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  weakDay: '火曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming-jpg',
                  weakDay: '火曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming-jpg',
                  weakDay: '火曜日',
                  targetStudentList: studentList),
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
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInBasicC,
                  classImgUrl: 'passport.png',
                  weakDay: '水曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(classInfo: Class(name: 'HR')),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  weakDay: '水曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
                classInfo: Class(
                    name: 'プログラミング',
                    classRoom: '',
                    classDocumentList: programmingDocumentListInBasicC,
                    classImgUrl: 'programming.jpg,',
                    weakDay: '水曜日',
                    targetStudentList: studentList)),
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
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  weakDay: '木曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInC,
                  classImgUrl: 'art-thinking.png',
                  weakDay: '木曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInC,
                  classImgUrl: 'art-thinking.png',
                  weakDay: '木曜日',
                  targetStudentList: studentList),
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
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInBasicC,
                  classImgUrl: 'design-thinking.jpg',
                  weakDay: '金曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInBasicC,
                  classImgUrl: 'design-thinking.jpg',
                  weakDay: '金曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  weakDay: '金曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  weakDay: '金曜日',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
