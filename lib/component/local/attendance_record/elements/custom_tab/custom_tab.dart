import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/text_style/text_style.dart';

class CustomTab extends StatelessWidget implements PreferredSizeWidget {
  const CustomTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      bottom: TabBar(
        isScrollable: true,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: primary,
        ),
        labelColor: white,
        unselectedLabelColor: midEmphasis,
        labelStyle: bodyBold(white),
        unselectedLabelStyle: bodyRegular(midEmphasis.withOpacity(0.6)),
        tabs: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Tab(text: 'すべて', height: 32.sp),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Tab(text: '出席', height: 32.sp),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Tab(text: '欠席', height: 32.sp),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp),
            child: Tab(text: 'その他', height: 32.sp),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
