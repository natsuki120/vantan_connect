import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/single/color.dart';

class TodaysLessonTab extends HookWidget {
  const TodaysLessonTab({super.key});

  @override
  Widget build(BuildContext context) {
    final _todaysLessonTabController = useTabController(initialLength: 3);
    return TabBar(
      controller: _todaysLessonTabController,
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
    );
  }
}
