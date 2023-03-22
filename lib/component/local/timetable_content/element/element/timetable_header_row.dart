import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/dateTime/dateTime_japan/date_time_japan.dart';
import '../../../../shared/single/text_style/text_style.dart';

class TimetableHeaderRow extends ConsumerWidget {
  const TimetableHeaderRow({Key? key, required this.weakDay}) : super(key: key);

  final String weakDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final day = ref.watch(dayProvider).value;
    return Container(
      width: 65.sp,
      height: 28.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: day == '${weakDay}曜日'
            ? secondary
            : surfaceSecondary.withOpacity(0.05),
      ),
      child: Text(
        weakDay,
        style: bodyRegular(
          day == '${weakDay}曜日' ? white : midEmphasis.withOpacity(0.7),
        ),
      ),
    );
  }
}
