import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/timetable_content/timetable_content.dart';
import 'package:vantan_connect/component/local/timetable_header/timetable_header.dart';

import '../component/shered/single/space_box.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceBox(height: 20.sp),
          TimetableHeader(),
          Expanded(child: TimeTableContent()),
        ],
      ),
    );
  }
}
