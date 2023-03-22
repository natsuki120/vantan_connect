import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/single/color/color.dart';

class TodaysLessonTab extends StatelessWidget {
  TodaysLessonTab({super.key, required this.todaysLessonTabController});
  final TabController? todaysLessonTabController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, bottom: 10.sp),
      child: TabBar(
        controller: todaysLessonTabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: primary,
        ),
        isScrollable: true,
        labelColor: white,
        unselectedLabelColor: midEmphasis,
        tabs: [
          Tab(text: 'aクラス', height: 28.sp),
          Tab(text: 'bクラス', height: 28.sp),
          Tab(text: 'cクラス', height: 28.sp),
        ],
      ),
    );
  }
}
