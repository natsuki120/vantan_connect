import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/attendance_record/hooks/use_is_editable/use_is_editable.dart';

import '../../../../shared/single/buttons/buttons.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/text_style/text_style.dart';
import '../../../attendance_modal_with_reason/elements/cancel_button/cancel_button.dart';

class AttendanceEditor extends ConsumerWidget {
  AttendanceEditor({
    super.key,
    required this.attendance,
  });

  final Widget attendance;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditable = ref.watch(isEditableProvider);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          isEditable
              ? Container()
              : TextButton(
                  onPressed: () {
                    ref.read(isEditableProvider.notifier).startEdit();
                  },
                  child: Text('編集', style: callOutRegular(black))),
          attendance,
          isEditable
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CancelButton(
                      onPressed: () {
                        ref.read(isEditableProvider.notifier).finishEdit();
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
                        ref.read(isEditableProvider.notifier).finishEdit();
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
