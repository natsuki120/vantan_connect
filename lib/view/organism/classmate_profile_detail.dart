import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/molecule/image_and_user_info.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class ClassmateProfileDetailCard extends StatelessWidget {
  const ClassmateProfileDetailCard({
    super.key,
    required this.classmateName,
    required this.classmateId,
    required this.classmateInfo,
    required this.classImg,
  });
  final String classmateName;
  final String classmateId;
  final String classmateInfo;
  final String classImg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageAndUserInfo(
          url: classImg,
          widget: GuidanceMessage(
            mainText: classmateName,
            mainTextStyle: headLineBold(colorScheme.onBackground),
            subText: classmateId,
            subTextStyle: subHeadLineRegular(
              colorScheme.onBackground.withOpacity(0.65),
            ),
            crossAxisAlignment: CrossAxisAlignment.start,
            spaceSize: 2.w,
          ),
        ),
        SpaceBox(
          height: 8.h,
        ),
        Table(
          columnWidths: {
            0: FlexColumnWidth(.1),
          },
          children: [
            TableRow(
              children: [
                SpaceBox(width: 100.w),
                Padding(
                  padding: EdgeInsets.only(left: 15.0.sp),
                  child: TitleInMolecule(
                    text: classmateInfo,
                    textStyle: bodyRegular(colorScheme.onBackground),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
