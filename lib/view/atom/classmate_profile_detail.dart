import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../atom/main_text.dart';
import '../atom/style_by_platform.dart';

class ClassmateProfileDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(),
        SpaceBox(
          width: 8.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('names[index]'),
              Text('@' + 'name'),
              Container(
                alignment: Alignment.topLeft,
                child: MainText(
                  text: '【太陽光発電所の保安・管理業務】※成長し続けるリテールビジネス分野総合商社の関連会社／スタートアップ',
                  textStyle: bodyRegular(colorScheme.onBackground),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
