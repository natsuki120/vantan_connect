import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/class_card_border.dart';
import 'package:vantan_connect/view/molecule/class_img.dart';
import 'package:vantan_connect/view/molecule/class_tag.dart';
import 'package:vantan_connect/view/molecule/grey_box.dart';
import 'package:vantan_connect/view/molecule/text_in_box.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';

class ClassCardWithImage extends StatelessWidget {
  const ClassCardWithImage({
    Key? key,
    required this.classInfo,
  }) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context) {
    return ClassCardBorder(
      padding: EdgeInsets.zero,
      radius: 12.sp,
      child: Row(
        children: [
          ClassImg(
            classImgUrl: classInfo.classImgUrl,
            width: 100.w,
            height: 245.h,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.sp),
              bottomLeft: Radius.circular(12.sp),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 13.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpaceBox(height: 17.h),
                  Row(
                    children: [
                      TextInBox(
                        width: 42.w,
                        height: 27.h,
                        color: colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(8.sp),
                        textStyle: subHeadLineBold(colorScheme.outline),
                        text: '前期',
                      ),
                      Spacer(),
                      TextInBox(
                        width: 49.w,
                        height: 21.h,
                        color: Color(0xffE7A15F),
                        borderRadius: BorderRadius.circular(8.sp),
                        textStyle: caption1Bold(colorScheme.background),
                        text: '履修中',
                      ),
                    ],
                  ),
                  SpaceBox(height: 8.h),
                  TitleInMolecule(
                    text: classInfo.name,
                    textStyle: headLineBold(colorScheme.onBackground),
                  ),
                  SpaceBox(height: 7.h),
                  Row(
                    children: [
                      IconAndText(
                        iconData: Icons.calendar_today_outlined,
                        text: '${classInfo.frameCount}コマ',
                        textStyle: callOutBold(
                          colorScheme.onBackground.withOpacity(0.5),
                        ),
                        spaceSize: 6.5.w,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      SpaceBox(width: 12.w),
                      IconAndText(
                        iconData: Icons.videocam_off_outlined,
                        text: classInfo.isOnline ? 'オンライン可' : 'オンライン不可',
                        textStyle: callOutBold(
                          colorScheme.onBackground.withOpacity(0.5),
                        ),
                        spaceSize: 6.5.w,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                    ],
                  ),
                  SpaceBox(height: 12.h),
                  GreyBox(
                    child: Container(
                      width: 200.w,
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                        horizontal: 17.w,
                      ),
                      child: Row(
                        children: [
                          TitleInMolecule(
                            text: '担当',
                            textStyle: caption1Regular(
                              colorScheme.onBackground.withOpacity(0.5),
                            ),
                          ),
                          SpaceBox(width: 12.w),
                          // ImageWithText(
                          //   imgUrl: classInfo.teacher[0]['userImagePath'],
                          //   text: classInfo.teacher[0]['name'],
                          //   textStyle: bodyRegular(
                          //     colorScheme.onBackground.withOpacity(0.7),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  SpaceBox(height: 20.h),
                  ClassTag(),
                  SpaceBox(height: 16.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
