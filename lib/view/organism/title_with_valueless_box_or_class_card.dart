import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/grey_box.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class TitleWithValuelessBoxOrClassCard extends StatelessWidget {
  const TitleWithValuelessBoxOrClassCard({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.isBaseClassSelected,
    required this.classCard,
  }) : super(key: key);

  final String title;
  final TextStyle textStyle;
  final bool isBaseClassSelected;
  final Widget classCard;

  @override
  Widget build(BuildContext context) {
    return isBaseClassSelected
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleInMolecule(text: title, textStyle: textStyle),
              SpaceBox(height: 20.h),
              classCard,
              SpaceBox(height: 10.h),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleInMolecule(text: title, textStyle: textStyle),
              SpaceBox(height: 20.h),
              GreyBox(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 358.sp, vertical: 60.sp),
                ),
              ),
              SpaceBox(height: 10.h),
              GreyBox(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 358.sp, vertical: 60.sp),
                ),
              ),
              SpaceBox(height: 10.h),
              GreyBox(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 358.sp, vertical: 60.sp),
                ),
              ),
            ],
          );
  }
}
