import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../token/color_schemes.g.dart';

class TopWeeklyCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 29.0),
      child: SfDateRangePicker(
        headerHeight: 0,
        selectionShape: DateRangePickerSelectionShape.circle,
        selectionColor: colorScheme.primary,
        selectionTextStyle: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
        todayHighlightColor: colorScheme.primary,
        monthViewSettings: const DateRangePickerMonthViewSettings(
            numberOfWeeksInView: 1,
            viewHeaderStyle: DateRangePickerViewHeaderStyle(
                textStyle: TextStyle(
              //TODO 日本語化　いつでも可能
              locale: Locale("Ja"),
              fontSize: 11,
              color: Colors.black,
            ))),
      ),
    );
  }
}
