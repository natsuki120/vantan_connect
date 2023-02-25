import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/single/color/color.dart';

class SharedCustomTab extends StatelessWidget {
  SharedCustomTab({super.key, required this.controller, required this.tabs});
  final TabController controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, bottom: 10.sp),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: primary,
        ),
        isScrollable: true,
        labelColor: white,
        unselectedLabelColor: midEmphasis,
        tabs: tabs,
      ),
    );
  }
}
