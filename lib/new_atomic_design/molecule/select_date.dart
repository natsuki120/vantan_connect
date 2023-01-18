import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.sp),
        color: Color(0xffE2F6FC),
      ),
      child: CalendarDatePicker2WithActionButtons(
        initialValue: [],
        config: CalendarDatePicker2WithActionButtonsConfig(
          selectedDayHighlightColor: primary,
          okButton: Text(
            'OK',
            style: labelLarge(FontWeight.w500, primary),
          ),
          cancelButton: Text(
            'Cancel',
            style: labelLarge(FontWeight.w500, primary),
          ),
        ),
      ),
    );
  }
}
