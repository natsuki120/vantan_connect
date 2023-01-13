import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/color_box_with_text.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/department/department.dart';

class TitleAboveColorCircleWithText extends StatelessWidget {
  const TitleAboveColorCircleWithText({
    Key? key,
    required this.title,
    required this.circleWidth,
    required this.circleHeight,
    required this.color,
    required this.textStyle,
    required this.departmentList,
  }) : super(key: key);

  final String title;
  final double circleWidth;
  final double circleHeight;
  final Color color;
  final TextStyle textStyle;
  final List<Department> departmentList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleInMolecule(
          text: title,
          textStyle: bodyBold(colorScheme.onBackground),
        ),
        SpaceBox(height: 12.sp),
        for (Department department in departmentList)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorCircleWithText(
                width: circleWidth,
                height: circleHeight,
                color: color,
                text: department.departmentName.value,
                textStyle: bodyBold(colorScheme.onBackground),
              ),
              SpaceBox(height: 8.sp),
              for (var major in department.majorList)
                Row(
                  children: [
                    SpaceBox(width: 22.sp),
                    TitleInMolecule(text: major.value, textStyle: textStyle),
                    SpaceBox(height: 6.sp),
                  ],
                ),
              SpaceBox(height: 26.sp),
            ],
          ),
      ],
    );
  }
}
