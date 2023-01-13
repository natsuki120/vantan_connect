import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/value/IconAndText.dart';
import '../molecule/Icon_and_text.dart';

class TitleAndMultipleIconWithText extends StatelessWidget {
  const TitleAndMultipleIconWithText({
    Key? key,
    required this.title,
    required this.iconAndTextList,
  }) : super(key: key);

  final String title;
  final List<IconAndTextValue> iconAndTextList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpaceBox(height: 40),
        TitleInMolecule(
          text: title,
          textStyle: caption1Regular(
            colorScheme.onBackground.withOpacity(0.5),
          ),
        ),
        SpaceBox(height: 12.sp),
        for (var fromListTake in iconAndTextList)
          Column(
            children: [
              IconAndText(
                iconData: fromListTake.icon,
                text: fromListTake.text,
                textStyle:
                    bodyRegular(colorScheme.onBackground.withOpacity(0.7)),
                spaceSize: 10.5.w,
                color: colorScheme.onBackground.withOpacity(0.7),
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              SpaceBox(height: 10.sp),
            ],
          ),
      ],
    );
  }
}
