import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../component/local/timetable_content/timetable_content.dart';
import '../component/local/timetable_header/timetable_header.dart';
import '../component/shered/single/space_box.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SpaceBox(height: 15.sp),
          TimetableHeader(),
          Expanded(child: TimeTableContent()),
        ],
      ),
    );
  }
}
