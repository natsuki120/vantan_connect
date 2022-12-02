import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_schemes.g.dart';
import 'space_box.dart';
import 'style_by_platform.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.tabs,
    required this.tabBarChildren,
    required this.isScrollable,
    required this.labelColor,
    required this.unselectedLabelColor,
  }) : super(key: key);

  final List<Widget> tabs;
  final List<Widget> tabBarChildren;
  final bool isScrollable;
  final Color labelColor;
  final Color unselectedLabelColor;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Expanded(
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: colorScheme.onBackground.withOpacity(0.3),
                  ),
                ),
              ),
              child: TabBar(
                isScrollable: isScrollable,
                labelColor: labelColor,
                labelStyle: headLineBold(colorScheme.primary),
                unselectedLabelColor: unselectedLabelColor,
                unselectedLabelStyle: labelLarge(
                  FontWeight.w500,
                  colorScheme.onBackground.withOpacity(0.5),
                ),
                indicatorColor: colorScheme.primary,
                tabs: tabs,
              ),
            ),
            SpaceBox(height: 16.h),
            Expanded(
              child: TabBarView(
                children: tabBarChildren,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
