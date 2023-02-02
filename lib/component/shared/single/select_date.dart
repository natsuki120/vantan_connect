import 'package:calendar_date_picker2/calendar_date_picker2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/single/color.dart';
import '../../shared/single/original_toggle_buttons.dart';
import '../../shared/single/space_box.dart';
import '../../shared/single/test_style.dart';

class SelectDate extends HookWidget {
  const SelectDate(this.labelText, {Key? key}) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final hover = useState(false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 328.sp,
          child: TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2.0.sp, color: primary),
              ),
              labelText: labelText,
              suffixIcon: IconButton(
                onPressed: () => hover.value = true,
                icon: Icon(Icons.today, size: 24.sp, color: midEmphasis),
              ),
            ),
          ),
        ),
        SpaceBox(height: 7.sp),
        Padding(
          padding: EdgeInsets.only(left: 8.0.sp),
          child: Text(
            'MM/DD/YYYY',
            style: bodySmall(FontWeight.w400, highEmphasis),
          ),
        ),
        SpaceBox(height: 7.sp),
        hover.value
            ? Container(
                width: 400.sp,
                height: 523.sp,
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
                    cancelButton: OriginalToggleIconText(
                      text: 'Cancel',
                      textStyle: labelLarge(FontWeight.w500, primary),
                      callback: () => hover.value = false,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
