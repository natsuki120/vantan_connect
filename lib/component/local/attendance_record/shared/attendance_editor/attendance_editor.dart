import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/single/buttons/buttons.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/text_style/text_style.dart';
import '../../../attendance_modal_with_reason/elements/cancel_button/cancel_button.dart';

class AttendanceEditor extends HookWidget {
  AttendanceEditor(
      {super.key, required this.attendance, required this.isEditable});

  final bool isEditable;
  final Widget attendance;
  @override
  Widget build(BuildContext context) {
    final _isEditable = useState<bool>(isEditable);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _isEditable.value
              ? Container()
              : TextButton(
                  onPressed: () {
                    _isEditable.value = true;
                  },
                  child: Text('編集', style: callOutRegular(black))),
          attendance,
          _isEditable.value
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CancelButton(
                      onPressed: () {
                        _isEditable.value = false;
                      },
                    ),
                    SizedBox(width: 24.sp),
                    FilledEnabledButton(
                      text: '決定',
                      textStyle: bodyBold(onPrimary),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.sp,
                        horizontal: 24.sp,
                      ),
                      backgroundColor: primary,
                      callback: () {
                        _isEditable.value = false;
                      },
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
