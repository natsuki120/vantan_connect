import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/single/navigator/navigator.dart';
import '../../shared/single/riverpod/riverpod.dart';
import '../../shared/single/color/color.dart';
import '../../shared/single/space_box/space_box.dart';
import '../../shared/single/buttons/buttons.dart';
import '../../shared/single/text_style/text_style.dart';
import '../attendance_modal/elements/class_detail_card/class_card.dart';
import '/domain/class/class.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';
import 'elements/cancel_button/cancel_button.dart';
import 'elements/multiline_text_field_for_reason/hooks/use_reason_text.dart';
import 'elements/multiline_text_field_for_reason/multiline_text_field_for_reason.dart';
import 'elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import 'elements/radio_button_with_attendance_status/radio_button_with_attendance_status.dart';

Future attendanceModalWithReason(BuildContext context, WidgetRef ref,
    Student student, ClassName className, Class classInfo) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              height: 800.sp,
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SpaceBox(height: 24.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CancelButton(),
                      SizedBox(width: 40.w),
                      Text(
                        '理由を書く',
                        style: bodySemiBold(black),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.sp),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '対象の授業を選択',
                                  style: bodySemiBold(black),
                                ),
                                SpaceBox(height: 20.h),
                                ClassCard(classInfo: classInfo)
                              ],
                            ),
                            SizedBox(height: 28.sp),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '出欠状況を選択',
                                  style: bodySemiBold(black),
                                ),
                                SpaceBox(height: 10.h),
                                RadioButtonWithAttendanceStatus(),
                              ],
                            ),
                            SizedBox(height: 34.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '理由を記述',
                                  style: bodySemiBold(black),
                                ),
                                SizedBox(height: 20.h),
                                MultilineTextFieldForReason(),
                              ],
                            ),
                            SizedBox(height: 40.sp),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CancelButton(),
                                SizedBox(width: 24.sp),
                                FilledEnabledButton(
                                  text: '送信する',
                                  textStyle: bodyBold(onPrimary),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.sp,
                                    horizontal: 24.sp,
                                  ),
                                  backgroundColor: primary,
                                  callback: () {
                                    EasyLoading.show(status: 'loading...');
                                    print(
                                        '$student, $className, $classInfo, $selectedAttendanceState, $reasonText');
                                    ref.read(studentUseCase).setAttendanceState(
                                          student: student,
                                          className: className,
                                          attendanceState:
                                              selectedAttendanceState,
                                          classInfo: classInfo,
                                          reasonText: reasonText,
                                        );
                                    EasyLoading.showSuccess('送信しました');
                                    NavigatorPopUntilFirstPage(context);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
