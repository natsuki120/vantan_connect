import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';
import 'package:vantan_connect/view/molecule/on_primary_color_button.dart';
import 'package:vantan_connect/view/molecule/primary_color_button.dart';
import 'package:vantan_connect/view/page/select_class_detail_page.dart';
import 'package:vantan_connect/view/page/select_class_page.dart';
import '../atom/color_schemes.g.dart';
import '../atom/space_box.dart';
import '../atom/style_by_platform.dart';
import '../molecule/guidance_message.dart';

class ClassCardInRegisterPage extends ConsumerWidget {
  const ClassCardInRegisterPage({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BorderBox(
      radius: 12,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconAndText(
                iconData: Icons.calendar_today,
                text: '${classInfo.frameCount}コマ',
                textStyle:
                    bodyRegular(colorScheme.onBackground.withOpacity(0.5)),
                spaceSize: 11.w,
                color: colorScheme.onBackground.withOpacity(0.5),
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              SpaceBox(width: 26.w),
              IconAndText(
                iconData: Icons.calendar_today,
                text: '9コマ',
                textStyle:
                    bodyRegular(colorScheme.onBackground.withOpacity(0.5)),
                spaceSize: 11.w,
                color: colorScheme.onBackground.withOpacity(0.5),
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ],
          ),
          SpaceBox(height: 22.h),
          GuidanceMessage(
            mainText: classInfo.name,
            subText: classInfo.overView,
            mainTextStyle: title2Bold(colorScheme.onBackground),
            subTextStyle:
                bodyRegular(colorScheme.onBackground.withOpacity(0.7)),
            crossAxisAlignment: CrossAxisAlignment.start,
            spaceSize: 7.h,
          ),
          SpaceBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnPrimaryColorButton(
                width: 120.w,
                height: 40.h,
                callback: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SelectClassDetailPage(classInfo: classInfo),
                  ),
                ),
                child: MainText(
                  text: '詳細をみる',
                  textStyle: bodyBold(colorScheme.primary),
                ),
              ),
              SpaceBox(width: 8.w),
              PrimaryColorButton(
                callback: () {
                  ref.watch(selectedClass.notifier).state = classInfo;
                  Navigator.of(context).pop();
                },
                child: MainText(
                  text: '選択する',
                  textStyle: bodyBold(colorScheme.background),
                ),
                width: 108.w,
                height: 40.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
