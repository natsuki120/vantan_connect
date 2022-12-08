import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/view/organism/button_when_press_color_changing.dart';
import 'package:vantan_connect/view/organism/user_attendance_status.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';
import '../token/space_box.dart';

final genre = StateProvider((ref) => '出席');

class AttendanceBookPage extends HookConsumerWidget {
  const AttendanceBookPage(this.classInfo, this.classDocument, {Key? key})
      : super(key: key);

  final Class classInfo;
  final ClassDocument classDocument;

  IconData? IconWhichDependsOnAttendance(String status) {
    IconData? iconData;
    if (status == '出席') {
      iconData = Icons.domain;
    } else if (status == '欠席') {
      iconData = Icons.videocam;
    } else {
      iconData = Icons.question_mark;
    }
    return iconData;
  }

  bool SelectStudentAttendance(String status, String wantToKnowStatus) {
    if (status == wantToKnowStatus) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(genre);
    return SingleChildScrollView(
      child: Column(
        children: [
          SpaceBox(height: 23.h),
          Row(
            children: [
              GestureDetector(
                child: ButtonWhenPressColorChanging(
                  onChanged: SelectStudentAttendance(
                      '出席', ref.watch(genre.notifier).state),
                  borderRadius: BorderRadius.circular(8.sp),
                  text: '出席',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
                onTap: () => ref.watch(genre.notifier).state = '出席',
              ),
              SpaceBox(width: 8.w),
              GestureDetector(
                onTap: () => ref.watch(genre.notifier).state = '遅刻',
                child: ButtonWhenPressColorChanging(
                  onChanged: SelectStudentAttendance(
                      '遅刻', ref.watch(genre.notifier).state),
                  borderRadius: BorderRadius.circular(8.sp),
                  text: '遅刻・欠席',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
              ),
              SpaceBox(width: 8.w),
              GestureDetector(
                onTap: () => ref.watch(genre.notifier).state = 'その他',
                child: ButtonWhenPressColorChanging(
                  onChanged: SelectStudentAttendance(
                      'その他', ref.watch(genre.notifier).state),
                  borderRadius: BorderRadius.circular(8.sp),
                  text: 'その他',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
              ),
            ],
          ),
          SpaceBox(height: 26.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: classInfo.student.length,
            itemBuilder: (context, index) {
              final student = classInfo.student[index];
              return Column(
                children: [
                  if (student['attendance'] == ref.watch(genre.notifier).state)
                    UserAttendanceStatus(
                      userName: student['name'],
                      userImgPath: student['userImagePath'],
                      iconData: IconWhichDependsOnAttendance(
                          ref.watch(genre.notifier).state)!,
                      iconSize: 24.sp,
                      iconColor: colorScheme.onBackground,
                    ),
                  SpaceBox(height: 8.h),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
