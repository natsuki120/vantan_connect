import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/single/color.dart';
import '../../../shared/single/space_box.dart';
import '../../../shared/single/text_style.dart';

class GradesTableAppBar extends StatelessWidget {
  const GradesTableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: Padding(
        padding: EdgeInsets.only(
            top: 8.sp, bottom: 18.sp, left: 20.sp, right: 28.sp),
        child: Center(
          child: Row(
            children: [
              Text('成績', style: title2Bold(black)),
              SpaceBox(width: 12.sp),
              Container(
                height: 36.sp,
                decoration: BoxDecoration(
                  color: surfaceTertiary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.sp, horizontal: 8.sp),
                  child: Text(
                    '...ム学部/ゲームプログラミング',
                    style: callOutRegular(midEmphasis),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0.sp),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48.sp),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 4.sp,
                isScrollable: true,
                indicatorColor: primary,
                labelColor: primary,
                labelStyle: callOutBold(primary),
                unselectedLabelColor: midEmphasis,
                unselectedLabelStyle: callOutRegular(midEmphasis),
                tabs: [
                  Tab(text: '1年生'),
                  Tab(text: '2年生'),
                  Tab(text: '3年生'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
