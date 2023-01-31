import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shered/single/color.dart';
import '../../../../shered/single/test_style.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class TimetableHeaderRow extends HookWidget {
  const TimetableHeaderRow({Key? key, required this.weakDay}) : super(key: key);

  final String weakDay;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ja');
    final today = useState(DateFormat.EEEE('ja').format(DateTime.now()));
    return Container(
      width: 65.sp,
      height: 28.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: today.value == '${weakDay}曜日'
            ? secondary
            : surfaceSecondary.withOpacity(0.05),
      ),
      child: Text(
        weakDay,
        style: bodyRegular(
          today.value == '${weakDay}曜日' ? white : midEmphasis.withOpacity(0.7),
        ),
      ),
    );
  }
}
