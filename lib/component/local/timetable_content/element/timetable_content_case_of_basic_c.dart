import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/single/color/color.dart';
import '../../../shared/single/space_box/space_box.dart';
import '../../../shared/single/student_list/student_list.dart';
import '/component/local/lesson_detail_body/hooks.dart';
import '/domain/class/class.dart';
import 'element/lesson.dart';
import 'element/timetable_header_row.dart';

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
            Lesson(
              classInfo: Class(name: 'S校サポート'),
              color: Colors.grey,
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffC5FDCE),
              classInfo: Class(
                  name: 'マーケティング',
                  classDocumentList: marketingDocumentListInC,
                  classImgUrl: 'marketing.png',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffC5FDCE),
              classInfo: Class(
                  name: 'マーケティング',
                  classDocumentList: marketingDocumentListInC,
                  classImgUrl: 'marketing.png',
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
              color: tertiaryPale,
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInC,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: tertiaryPale,
              classInfo: Class(
                  name: 'Webデザイン',
                  classDocumentList: WebDesignDocumentListInC,
                  classImgUrl: 'wordpress-g1155af3be_1920.jpg',
                  targetStudentList: studentList),
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
                  classImgUrl: 'programming-jpg',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming-jpg',
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
              color: Color(0xffE5BEEF),
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInBasicC,
                  classImgUrl: 'passport.png',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffE5BEEF),
              classInfo: Class(
                  name: 'ITパスポート',
                  classDocumentList: ITPassportDocumentListInBasicC,
                  classImgUrl: 'passport.png',
                  targetStudentList: studentList),
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
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
                color: primary10,
                classInfo: Class(
                    name: 'プログラミング',
                    classRoom: '',
                    classDocumentList: programmingDocumentListInBasicC,
                    classImgUrl: 'programming.jpg,',
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
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList),
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
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffF5DDC4),
              classInfo: Class(
                  name: 'アートシンキング',
                  classDocumentList: artThinkingDocumentListInC,
                  classImgUrl: 'art-thinking.png',
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
              color: Color(0xffFFDDAB),
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInBasicC,
                  classImgUrl: 'design-thinking.jpg',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: Color(0xffFFDDAB),
              classInfo: Class(
                  name: 'デザインシンキング',
                  classDocumentList: designThinkingDocumentListInBasicC,
                  classImgUrl: 'design-thinking.jpg',
                  targetStudentList: studentList),
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
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
            Lesson(
              color: primary10,
              classInfo: Class(
                  name: 'プログラミング',
                  classRoom: '',
                  classDocumentList: programmingDocumentListInBasicC,
                  classImgUrl: 'programming.jpg',
                  targetStudentList: studentList),
            ),
            SpaceBox(height: 4.sp),
          ],
        ),
      ],
    );
  }
}
