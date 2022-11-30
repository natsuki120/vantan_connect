import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.tabChildren,
    required this.tabBarChildren,
    required this.tabLength,
    required this.title,
  }) : super(key: key);

  final List<Widget> tabChildren;
  final List<Widget> tabBarChildren;
  final int tabLength;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabLength,
      child: Expanded(
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor: colorScheme.primary,
              labelStyle: headLineBold(colorScheme.primary),
              unselectedLabelColor: colorScheme.onBackground.withOpacity(0.5),
              unselectedLabelStyle: labelLarge(
                FontWeight.w500,
                colorScheme.onBackground.withOpacity(0.5),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: colorScheme.primary,
              tabs: tabChildren,
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
