import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/single/color/color.dart';
import '../../../shared/single/space_box/space_box.dart';
import '../../../shared/single/student_list/student_list.dart';
import '/component/local/lesson_detail_body/hooks.dart';
import '/domain/class/class.dart';
import 'element/lesson.dart';
import 'element/timetable_header_column.dart';
import 'element/timetable_header_row.dart';

class TimetableContentCaseOfBasicC extends StatelessWidget {
  const TimetableContentCaseOfBasicC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                SpaceBox(width: 32),
                SpaceBox(width: 8),
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
                SpaceBox(width: 8),
                Lesson(
                  classInfo: Class(name: 'S高サポート'),
                  color: Colors.grey,
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
                SpaceBox(width: 8),
                Lesson(
                  color: Color(0xffC5FDCE),
                  classInfo: Class(
                      name: 'マーケティング',
                      classDocumentList: marketingDocumentListInC,
                      classImgUrl: 'marketing.png',
                      targetStudentList: studentList,
                      weakDay: ['月']),
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
                SpaceBox(width: 8),
                Lesson(
                  color: Color(0xffC5FDCE),
                  classInfo: Class(
                    name: 'マーケティング',
                    classDocumentList: marketingDocumentListInC,
                    classImgUrl: 'marketing.png',
                    targetStudentList: studentList,
                    weakDay: ['月'],
                  ),
                ),
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
                SpaceBox(width: 8),
                Normal(),
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
                SpaceBox(width: 8),
                Normal(),
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
                SpaceBox(width: 8),
                Normal(),
              ],
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '火'),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              color: tertiaryPale,
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInC,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  targetStudentList: studentList,
                  weakDay: ['火曜日']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: tertiaryPale,
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInC,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  targetStudentList: studentList,
                  weakDay: ['火曜日']),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['火曜日']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['火曜日']),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '水'),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffE5BEEF),
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInBasicC,
                  classImgUrl: 'passport.png',
                  targetStudentList: studentList,
                  weakDay: ['水']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffE5BEEF),
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInBasicC,
                  classImgUrl: 'passport.png',
                  targetStudentList: studentList,
                  weakDay: ['水']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              classInfo: Class(name: 'HR'),
              color: Colors.yellow,
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['水']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
                color: primary10,
                classInfo: Class(
                    name: 'プログラミング',
                    classRoom: '',
                    classDocumentList: programmingDocumentListInBasicC,
                    classImgUrl: 'programming.jpg',
                    targetStudentList: studentList,
                    weakDay: ['水'])),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '木'),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['木曜日']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['木曜日']),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffF5DDC4),
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInC,
                  classImgUrl: 'art-thinking.png',
                  targetStudentList: studentList,
                  weakDay: ['木曜日']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffF5DDC4),
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInC,
                  classImgUrl: 'art-thinking.png',
                  targetStudentList: studentList,
                  weakDay: ['木曜日']),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
          ],
        ),
        SpaceBox(width: 2),
        Column(
          children: [
            TimetableHeaderRow(weakDay: '金'),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffFFDDAB),
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInBasicC,
                  classImgUrl: 'design-thinking.jpg',
                  targetStudentList: studentList,
                  weakDay: ['金曜日']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffFFDDAB),
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInBasicC,
                  classImgUrl: 'design-thinking.jpg',
                  targetStudentList: studentList,
                  weakDay: ['金曜日']),
            ),
            SpaceBox(height: 4.sp),
            Normal(),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['金曜日']),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList,
                  weakDay: ['金曜日']),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
