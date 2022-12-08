import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/use_case/state/class_use_case.dart';
import 'package:vantan_connect/view/organism/class_card_with_image.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/description_text.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import 'package:vantan_connect/view/atom/primary_color_button.dart';
import 'package:vantan_connect/view/template/attendance_confirmation_write_reason_modal.dart';
import '../../domain/class/class.dart';
import '../molecule/Icon_and_text.dart';

Future attendanceConfirmationModal(BuildContext context, Class classInfo) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 566.h,
        decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20.sp),
            right: Radius.circular(20.sp),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 28.sp),
          child: Column(
            children: [
              Row(
                children: [
                  MainText(
                    text: '出席確認',
                    textStyle: title1Bold(colorScheme.onBackground),
                  ),
                ],
              ),
              SpaceBox(height: 24.h),
              DescriptionText(
                text: '授業開始まであと5分です。『出席する』または『遅刻・欠席する』から出席状況を送信してください。',
                textStyle: callOutRegular(colorScheme.onBackground),
              ),
              SpaceBox(height: 24.h),
              ClassCardWithImage(classInfo: classInfo),
              SpaceBox(height: 40.h),
              PrimaryColorButton(
                width: double.infinity,
                height: 50.h,
                callback: () {},
                child: MainText(
                  text: '出席する',
                  textStyle: bodyBold(
                    colorScheme.background,
                  ),
                ),
              ),
              SpaceBox(height: 18.h),
              GestureDetector(
                child: IconAndText(
                  iconData: Icons.edit_outlined,
                  color: colorScheme.primary,
                  text: '遅刻・欠席する',
                  textStyle: bodyRegular(
                    colorScheme.primary.withOpacity(0.8),
                  ),
                  spaceSize: 10.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                onTap: () => attendanceConfirmationWriteReason(context),
              )
            ],
          ),
        ),
      );
    },
  );
}
