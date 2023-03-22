import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/single/color/color.dart';
import '../../../shared/single/space_box/space_box.dart';
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
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        SpaceBox(width: 24.w)
      ],
    );
  }
}
