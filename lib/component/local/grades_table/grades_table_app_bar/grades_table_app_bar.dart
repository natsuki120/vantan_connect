import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/single/color/color.dart';
import '../../../shared/single/text_style/text_style.dart';

class GradesTableAppBar extends StatelessWidget {
  const GradesTableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('成績', style: title2Bold(black)),
        ],
      ),
      titleSpacing: 12.w,
      title: Container(
          height: 36.sp,
          decoration: BoxDecoration(
            color: surfaceTertiary,
            borderRadius: BorderRadius.circular(8.sp),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            //TODO: ここに現在開いているクラスを　AppBarに表示させる。今回は応用クラス
            //上位階層が不明なため一時的にこのような形で置いている
            child: Row(
              children: [
                Text('...アカデミー', style: callOutRegular(midEmphasis)),
                Icon(Icons.navigate_next, color: lowEmphasis),
                Text('応用クラス', style: callOutBold(black)),
              ],
            ),
          )),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        SpaceBox(width: 24.w)
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 4.0,
                splashBorderRadius: BorderRadius.circular(4.sp),
                indicatorColor: primary,
                isScrollable: true,
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
