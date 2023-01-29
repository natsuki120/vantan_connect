import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/riverpod.dart';
import 'package:vantan_connect/component/shered/single/buttons.dart';
import 'package:vantan_connect/component/shered/single/custom_icon_button.dart';
import 'package:vantan_connect/component/shered/single/department_tag.dart';
import 'package:vantan_connect/component/shered/single/registerd_lesson_by_student_mark.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';
import 'package:vantan_connect/component/shered/single/test_style.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/domain/value/class_name.dart';
import '../../../page/lesson_detail_page.dart';
import '../../shered/navigator.dart';
import '../../shered/single/color.dart';

Future attendanceModal(BuildContext context, Class classInfo, WidgetRef ref,
    Student student, ClassName className) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        height: 516.sp,
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            SpaceBox(height: 28.sp),
            Row(
              children: [
                Text('出席確認', style: title1Bold(highEmphasis)),
                Spacer(),
                CustomIconButton(
                  icon: Icon(Icons.question_mark),
                  width: 40.sp,
                  height: 40.sp,
                  borderColor: primary10,
                  backgroundColor: primary10,
                  callback: () {},
                ),
                SpaceBox(width: 15.sp),
                CustomIconButton(
                  icon: Icon(Icons.close, color: midEmphasis.withOpacity(0.7)),
                  width: 40.sp,
                  height: 40.sp,
                  borderColor: midEmphasis.withOpacity(0.7),
                  backgroundColor: Colors.transparent,
                  callback: () {},
                ),
              ],
            ),
            SpaceBox(height: 20.sp),
            Text('授業開始まであと5分です。『出席する』または『遅刻・欠席する』から出席状況を送信してください。'),
            SpaceBox(height: 16.sp),
            // 他のページの内容が不明なため、ひとまずそのまま書く
            // もしかしたらshared component にするかも
            GestureDetector(
              onTap: () => NavigatorPush(
                context,
                page: LessonDetailPage(classInfo: classInfo),
              ),
              child: Container(
                width: 358.sp,
                decoration: BoxDecoration(
                  border: Border.all(color: midEmphasis.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                child: Row(
                  children: [
                    Placeholder(fallbackWidth: 100, fallbackHeight: 194),
                    Padding(
                      padding: EdgeInsets.all(16.0.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 39.sp,
                                height: 27.sp,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: surfaceSecondary.withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(8.sp),
                                ),
                                child: Text(
                                  '1限',
                                  style: subHeadLineBold(
                                    midEmphasis.withOpacity(0.7),
                                  ),
                                ),
                              ),
                              SpaceBox(width: 8.sp),
                              Container(
                                width: 39.sp,
                                height: 27.sp,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: surfaceSecondary.withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(8.sp),
                                ),
                                child: Text(
                                  '2限',
                                  style: subHeadLineBold(
                                    midEmphasis.withOpacity(0.7),
                                  ),
                                ),
                              ),
                              SpaceBox(width: 91.sp),
                              RegisteredLessonByStudentMark(),
                            ],
                          ),
                          SpaceBox(height: 8.sp),
                          Text(classInfo.name,
                              style: headLineBold(highEmphasis)),
                          SpaceBox(height: 5.sp),
                          Row(
                            children: [
                              Icon(
                                Icons.today,
                                size: 15.sp,
                                color: lowEmphasis.withOpacity(0.5),
                              ),
                              SpaceBox(width: 6.sp),
                              Text(
                                '${classInfo.frameCount}コマ',
                                style: caption2Regular(
                                  lowEmphasis.withOpacity(0.5),
                                ),
                              ),
                              SpaceBox(width: 12.sp),
                              Icon(
                                Icons.videocam_off_outlined,
                                size: 17.sp,
                                color: lowEmphasis.withOpacity(0.5),
                              ),
                              SpaceBox(width: 5.sp),
                              Text(
                                'オンライン不可',
                                style: caption2Regular(
                                  lowEmphasis.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          SpaceBox(height: 8.sp),
                          // shared component候補
                          Container(
                            height: 40.sp,
                            decoration: BoxDecoration(
                              color: surfaceSecondary.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.0.sp,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '担当',
                                    style: caption1Regular(
                                      lowEmphasis.withOpacity(0.5),
                                    ),
                                  ),
                                  SpaceBox(width: 12.sp),
                                  Placeholder(
                                    fallbackWidth: 32.sp,
                                    fallbackHeight: 32,
                                  ),
                                  SpaceBox(width: 8.sp),
                                  Text(
                                    '高橋　夏輝',
                                    style: bodyRegular(
                                      midEmphasis.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SpaceBox(height: 24.sp),
                          DepartmentTag(department: 'テックフォードアカデミー'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SpaceBox(height: 24.sp),
            FilledEnabledButton(
                text: '出席する',
                textStyle: bodyBold(onPrimary),
                padding: EdgeInsets.symmetric(
                  horizontal: 145.sp,
                  vertical: 13.sp,
                ),
                backgroundColor: primary,
                callback: () {
                  ref
                      .read(studentUseCase)
                      .attendanceLesson(student: student, className: className);
                }),
            SpaceBox(height: 8.sp),
            EnabledTextButtonWithIcon(
              text: '遅刻・欠席する',
              textStyle: bodyRegular(primary),
              callback: () {},
              icon: Icon(
                Icons.edit_outlined,
                size: 13.sp,
                color: primary,
              ),
            ),
          ],
        ),
      );
    },
  );
}
