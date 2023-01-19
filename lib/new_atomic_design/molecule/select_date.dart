import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/molecule/original_toggle_buttons.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../../view/atom/original_icon.dart';
import '../../view/token/style_by_platform.dart';

class SelectDate extends HookWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hover = useState(false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 328.sp,
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0.sp, color: primary),
                ),
                labelText: 'Date',
                suffixIcon: MouseRegion(
                  onHover: (event) => hover.value = true,
                  child: IconButton(
                    onPressed: () {},
                    icon: OriginalIcon(
                      iconData: Icons.today,
                      iconSize: 24.sp,
                      iconColor: midEmphasis,
                    ),
                  ),
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
      ),
    );
  }
}
