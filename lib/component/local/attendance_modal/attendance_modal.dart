import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/attendance_modal_with_reason.dart';

import '../../shared/navigator.dart';
import '../../shared/riverpod.dart';
import '../../shared/single/buttons.dart';
import '../../shared/single/color.dart';
import '../../shared/single/custom_icon_button.dart';
import '../../shared/single/department_tag.dart';
import '../../shared/single/space_box.dart';
import '../../shared/single/text_style.dart';
import 'hooks.dart';
import '/domain/class/class.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';
import '/page/lesson_detail_page.dart';

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
            Text('『出席する』または『遅刻・欠席する』から出席状況を送信してください。'),
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
                    SizedBox(
                      width: 100.sp,
                      height: 210.sp,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0.sp),
                        child: Image.asset(
                          'images/${classInfo.classImgUrl}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
                                  '前期',
                                  style: subHeadLineBold(
                                    midEmphasis.withOpacity(0.7),
                                  ),
                                ),
                              ),
                              SpaceBox(width: 91.sp),
                            ],
                          ),
                          SpaceBox(height: 8.sp),
                          Text(classInfo.name,
                              style: headLineBold(highEmphasis)),
                          SpaceBox(height: 5.sp),

                          SpaceBox(height: 8.sp),
                          // shared component候補
                          // Container(
                          //   height: 40.sp,
                          //   decoration: BoxDecoration(
                          //     color: surfaceSecondary.withOpacity(0.05),
                          //     borderRadius: BorderRadius.circular(8.sp),
                          //   ),
                          //   child: Padding(
                          //     padding: EdgeInsets.symmetric(
                          //       horizontal: 16.0.sp,
                          //     ),
                          //     child: Row(
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         Text(
                          //           '担当',
                          //           style: caption1Regular(
                          //             lowEmphasis.withOpacity(0.5),
                          //           ),
                          //         ),
                          //         SpaceBox(width: 12.sp),
                          //         SpaceBox(width: 8.sp),
                          //         Text(
                          //           '高橋　夏輝',
                          //           style: bodyRegular(
                          //             midEmphasis.withOpacity(0.7),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          SpaceBox(height: 24.sp),
                          DepartmentTag(department: 'テックフォードアカデミー'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (ref.watch(today) == classInfo.weakDay)
              Column(
                children: [
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
                        ref.read(studentUseCase).attendanceLesson(
                            student: student, className: className);
                      }),
                  SpaceBox(height: 8.sp),
                  EnabledTextButtonWithIcon(
                    text: '遅刻・欠席する',
                    textStyle: bodyRegular(primary),
                    callback: () => attendanceModalWithReason(
                        context, ref, student, className),
                    icon: Icon(
                      Icons.edit_outlined,
                      size: 13.sp,
                      color: primary,
                    ),
                  ),
                ],
              )
          ],
        ),
      );
    },
  );
}
