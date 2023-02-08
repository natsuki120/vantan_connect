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
      leadingWidth: 72.sp,
      leading: Center(child: Text('成績', style: title2Bold(black))),
      titleSpacing: 0,
      title: Container(
        height: 36.sp,
        child: TextField(
          //controller: editingController,
          decoration: InputDecoration(
            hintText: "...ム学部 /ゲームプログラム総合",
            hintStyle: callOutRegular(midEmphasis),
            filled: true,
            fillColor: surfaceTertiary,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.sp),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.sp),
              borderSide: BorderSide(color: surfaceTertiary),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        SpaceBox(width: 20.sp)
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56.sp),
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
