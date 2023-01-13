import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../molecule/image_with_text.dart';
import '../token/style_by_platform.dart';

class UserAttendanceStatus extends StatelessWidget {
  const UserAttendanceStatus({
    Key? key,
    required this.userName,
    required this.userImgPath,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);

  final String userName;
  final String userImgPath;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageWithText(
              text: userName,
              textStyle: bodyRegular(colorScheme.onBackground),
              imgUrl: userImgPath,
            ),
            SpaceBox(width: 43.w),
            OriginalIcon(
              iconData: iconData,
              iconSize: iconSize,
              iconColor: iconColor,
            ),
          ],
        ),
        RowBorderLine(),
      ],
    );
  }
}
