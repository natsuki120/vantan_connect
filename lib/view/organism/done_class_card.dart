import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class DoneClassCard extends StatelessWidget {
  const DoneClassCard({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      height: 101.h,
      decoration: BoxDecoration(
        color: colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 72.w,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: colorScheme.onBackground.withOpacity(0.25),
                  width: 1.w,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleInMolecule(
                  text: '第1回',
                  textStyle: caption1Regular(colorScheme.onBackground),
                ),
                TitleInMolecule(
                  text: '5/10',
                  textStyle: headLineBold(colorScheme.onBackground),
                ),
              ],
            ),
          ),
          SpaceBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleInMolecule(
                  text: title,
                  textStyle: headLineBold(colorScheme.onBackground),
                ),
                SpaceBox(height: 8.h),
                TitleInMolecule(
                  text: description,
                  textStyle: bodyRegular(colorScheme.onBackground),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
