import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/use_case/state/base_class_notifier.dart';
import 'package:vantan_connect/use_case/state/class_dto_notifier.dart';
import 'package:vantan_connect/view/page/select_class_detail_page.dart';
import 'package:vantan_connect/view/page/select_class_page.dart';
import 'package:vantan_connect/view/token/const_width_and_height.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/organism/class_card.dart';

import '../../use_case/state/class_use_case.dart';
import '../../use_case/state/selectable_class_notifier.dart';

class SelectClassBaseClassPage extends HookConsumerWidget {
  const SelectClassBaseClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(baseClass);
    final classList = ref.watch(baseClass.notifier).state;
    useEffectOnce(() {
      ref.watch(baseClass.notifier).fetchBaseClass();
      return;
    });
    return TitleAndSelectClassScreen(
      title: 'ベースクラス一覧',
      children: [
        SpaceBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: classList.length,
            itemBuilder: (context, index) {
              final classInfo = classList[index];
              return Column(
                children: [
                  ClassCard(
                    isSelected: false,
                    iconText: '${classInfo.classInfo!.frameCount}コマ',
                    iconData: Icons.calendar_today,
                    className: classInfo.classInfo!.name,
                    description: classInfo.classInfo!.overView,
                    primaryCallback: () {
                      ref.read(classDto.notifier).registerMyClass(classInfo);
                      ref.watch(selectedClass.notifier).state = classInfo;
                      ref
                          .read(selectableClass.notifier)
                          .fetchSelectableClass(classInfo);
                      ref.watch(isBaseClassSelected.notifier).state = true;
                      NavigatorPop(context);
                    },
                    onPrimaryCallback: () => NavigatorPush(
                      context,
                      page: SelectClassDetailPage(classDto: classInfo),
                    ),
                    onPrimaryWhichIsSelectedCallback: () =>
                        ref.watch(isBaseClassSelected.notifier).state = false,
                  ),
                  SpaceBox(height: 16.h),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
