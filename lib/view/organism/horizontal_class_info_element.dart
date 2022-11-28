import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import '../token/color_schemes.g.dart';
import '../token/style_by_platform.dart';

class HorizontalClassInfoElement extends StatelessWidget {
  const HorizontalClassInfoElement({
    Key? key,
    required this.text,
    required this.iconData,
    required this.info,
  }) : super(key: key);

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
                IconAndText(
                  iconData: iconData,
                  text: text,
                  textStyle: bodyRegular(
                    colorScheme.onBackground.withOpacity(0.5),
                  ),
                  spaceSize: 9.w,
                  color: colorScheme.onBackground.withOpacity(0.5),
                  mainAxisAlignment: MainAxisAlignment.start,
                )
              ],
            ),
            info,
          ],
        ),
      ],
    );
  }
}
