import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/border_box_which_move_to_select_base_class.dart';
import 'package:vantan_connect/view/organism/class_card.dart';
import 'package:vantan_connect/view/organism/title_and_valueless_box.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/page/select_class_base_class_page.dart';
import 'package:vantan_connect/view/template/select_class_base_class_template.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';

final selectedClass = StateProvider((ref) => Class());

class SelectClassPage extends ConsumerWidget {
  const SelectClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Class classInfo = ref.watch(selectedClass);
    return TitleAndSelectClassScreen(
      title: '時間割を選択',
      children: [
        SpaceBox(height: 40.h),
        classInfo == Class()
            ? TitleAndBorderBoxWhichMoveToSelectBaseClass(
                title: 'ベースクラス',
                textStyle: bodyRegular(colorScheme.onBackground),
                pageRoute: SelectClassBaseClassPage(),
                iconData: Icons.add,
                width: 40.w,
                height: 40.h,
                text: '選択する',
                padding:
                    EdgeInsets.symmetric(horizontal: 159.w, vertical: 26.h),
                radius: 12.sp,
                buttonPadding: EdgeInsets.all(20.sp),
                titleTextStyle: bodyBold(colorScheme.onBackground),
              )
            : ClassCard(
                isSelected: true,
                iconText: '${classInfo.frameCount}コマ',
                iconData: Icons.calendar_today,
                className: classInfo.name,
                description: classInfo.overView,
                primaryCallback: () {},
                onPrimaryCallback: () => NavigatorPush(
                  context,
                  page: SelectClassBaseClassPage(),
                ),
              ),
        SpaceBox(height: 40.h),
        TitleAndValuelessBox(
          title: '選択クラス',
          textStyle: bodyBold(colorScheme.onBackground),
        )
      ],
    );
  }
}
