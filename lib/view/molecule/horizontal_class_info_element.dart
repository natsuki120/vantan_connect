import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../atom/color_schemes.g.dart';
import '../atom/space_box.dart';
import '../atom/style_by_platform.dart';

class HorizontalClassInfoElement extends StatelessWidget {
  const HorizontalClassInfoElement(
      {Key? key,
      required this.text,
      required this.iconData,
      required this.info})
      : super(key: key);

  final String text;
  final IconData iconData;
  final Widget info;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FlexColumnWidth(.6),
      },
      children: [
        TableRow(
          children: [
            Row(
              children: [
                Icon(iconData),
                SpaceBox(width: 10.w),
                Text(
                  text,
                  style: labelLarge(
                    FontWeight.w300,
                    colorScheme.onBackground.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            info,
          ],
        ),
      ],
    );
  }
}
