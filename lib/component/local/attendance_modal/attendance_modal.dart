import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/class_detail_card/class_card.dart';
import '../../shared/single/navigator/navigator.dart';
import '../../shared/single/riverpod/riverpod.dart';
import '../../shared/single/buttons/buttons.dart';
import '../../shared/single/color/color.dart';
import '../../shared/single/department_tag/custom_icon_button.dart';
import '../../shared/single/space_box/space_box.dart';
import '../../shared/single/text_style/text_style.dart';
import '../attendance_modal_with_reason/attendance_modal_with_reason.dart';
import '/domain/class/class.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';
import 'hooks.dart';

Future attendanceModal(BuildContext context, Class classInfo, WidgetRef ref,
    Student student, ClassName className, AsyncValue asyncValue) {
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
                  callback: () {
                    NavigatorPop(context);
                  },
                ),
              ],
            ),
            SpaceBox(height: 20.sp),
            Text('『出席する』または『遅刻・欠席する』から出席状況を送信してください。'),
            SpaceBox(height: 16.sp),
            // 他のページの内容が不明なため、ひとまずそのまま書く
            // もしかしたらshared component にするかも
            //一旦elementsに移行
            ClassCard(classInfo: classInfo),
            if (ref.watch(today) == classInfo.weakDay)
              asyncValue.when(
                data: (data) => Column(
                  children: [SpaceBox(height: 24.sp), Text('出席確認完了済みの授業です')],
                ),
                error: (error, stack) => Column(
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
                          EasyLoading.show(status: 'loading...');
                          ref.read(studentUseCase).attendanceLesson(
                                student: student,
                                className: className,
                              );
                          EasyLoading.showSuccess('送信しました');
                          NavigatorPop(context);
                        }),
                    SpaceBox(height: 8.sp),
                    EnabledTextButtonWithIcon(
                      text: '遅刻・欠席する',
                      textStyle: bodyRegular(primary),
                      callback: () => attendanceModalWithReason(
                          context, ref, student, className, classInfo),
                      icon: Icon(
                        Icons.edit_outlined,
                        size: 13.sp,
                        color: primary,
                      ),
                    ),
                  ],
                ),
                loading: () => CircularProgressIndicator(),
              )
            else
              Column(
                children: [
                  SpaceBox(height: 24.sp),
                  Text('今日行われる授業以外の授業の出席確認はできません')
                ],
              ),
          ],
        ),
      );
    },
  );
}
