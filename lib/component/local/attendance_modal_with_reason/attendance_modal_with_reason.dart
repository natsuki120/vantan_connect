import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shered/single/color.dart';
import '../../shered/single/space_box.dart';
import '../../shered/single/buttons.dart';
import '../../shered/single/test_style.dart';
import 'elements/checkbox_with_class.dart';
import 'elements/multiline_text_field_for_reason.dart';
import 'elements/radio_button_with_attendance_status.dart';

Future attendanceModalWithReason(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 789.sp,
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
                height: 739,
                padding:
                    EdgeInsets.symmetric(horizontal: 16.sp, vertical: 20.sp),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 230,
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
                                children: <Widget>[
                                  RadioButtonWithAttendanceStatus(
                                      attendanceState: '遅刻'),
                                  RadioButtonWithAttendanceStatus(
                                      attendanceState: '欠席'),
                                  RadioButtonWithAttendanceStatus(
                                      attendanceState: 'その他(公欠を除く)'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 360.h,
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
                            Container(
                              height: 261.h,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  CheckboxWithClass(
                                      period: '1限', className: 'UI/UX'),
                                  CheckboxWithClass(
                                      period: '2限', className: 'UI/UX'),
                                  CheckboxWithClass(
                                      period: '3限', className: 'AWSプラクティショナー'),
                                  CheckboxWithClass(
                                      period: '4限', className: 'AWSプラクティショナー'),
                                  CheckboxWithClass(
                                      period: '5限', className: 'マーケティング'),
                                  CheckboxWithClass(
                                      period: '6限', className: 'マーケティング'),
                                ],
                              ),
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
