import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/single/riverpod/riverpod.dart';
import '../../shared/single/token/color/color.dart';
import '../../shared/single/token/space_box/space_box.dart';
import '../../shared/single/buttons/buttons.dart';
import '../../shared/single/token/text_style/text_style.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';
import 'elements/multiline_text_field_for_reason/hooks/use_reason_text.dart';
import 'elements/multiline_text_field_for_reason/multiline_text_field_for_reason.dart';
import 'elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import 'elements/radio_button_with_attendance_status/radio_button_with_attendance_status.dart';
import 'elements/select_class_checkbox/hooks/use_check.dart';
import 'elements/select_class_checkbox/select_class_checkbox.dart';

Future attendanceModalWithReason(
    BuildContext context, WidgetRef ref, Student student, ClassName className) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: 810.sp,
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
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
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'キャンセル',
                          style: callOutRegular(black),
                        )),
                    SizedBox(width: 40.w),
                    Text(
                      '理由を書く',
                      style: bodySemiBold(black),
                    )
                  ],
                ),
                Container(
                  height: 739.sp,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 20.sp),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 230.sp,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '出欠状況を選択',
                                style: bodySemiBold(black),
                              ),
                              SpaceBox(height: 10.h),
                              Container(
                                child: Column(
                                  children: [
                                    RadioButtonWithAttendanceStatus(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 400.sp,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '対象の授業を選択',
                                style: bodySemiBold(black),
                              ),
                              SpaceBox(height: 4.h),
                              Text(
                                '理由を書く対象とする授業を選択してください。',
                                style: callOutRegular(black),
                              ),
                              SpaceBox(height: 20.h),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CheckBoxListState(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 264.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 34.h),
                              Text(
                                '理由を記述',
                                style: bodySemiBold(black),
                              ),
                              SizedBox(height: 20.h),
                              MultilineTextFieldForReason(),
                            ],
                          ),
                        ),
                        FilledEnabledButton(
                          text: '確認',
                          textStyle: bodyBold(onPrimary),
                          padding: EdgeInsets.symmetric(
                            horizontal: 145.sp,
                            vertical: 13.sp,
                          ),
                          backgroundColor: primary,
                          callback: () {
                            ref.read(studentUseCase).setAttendanceState(
                                  student: student,
                                  className: className,
                                  attendanceState: selectedAttendanceState,
                                  selectedClass: selectedClass,
                                  reasonText: reasonText,
                                );
                          },
                        ),
                        SpaceBox(height: 16.sp),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
