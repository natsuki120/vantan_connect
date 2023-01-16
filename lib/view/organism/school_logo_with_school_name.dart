import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/text_and_icon.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class SchoolLogoWithSchoolName extends StatelessWidget {
  const SchoolLogoWithSchoolName(
      {Key? key, required this.schoolName, required this.whereSchool})
      : super(key: key);

  final String schoolName;
  final String whereSchool;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('images/Course icon.png'),
        SpaceBox(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleInMolecule(
              text: schoolName,
              textStyle: caption1Bold(colorScheme.onBackground),
            ),
            SpaceBox(height: 4.sp),
            TextAndIcon(
              text: whereSchool,
              textStyle: title3Bold(colorScheme.onBackground),
              spaceSize: 11.5.sp,
              iconData: Icons.unfold_more,
              iconColor: colorScheme.onBackground.withOpacity(0.5),
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ],
        )
      ],
    );
  }
}
