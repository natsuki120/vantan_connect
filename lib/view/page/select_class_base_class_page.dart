import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/use_case/class_use_case.dart';
import 'package:vantan_connect/view/page/select_class_detail_page.dart';
import 'package:vantan_connect/view/page/select_class_page.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/organism/class_card.dart';

class SelectClassBaseClassPage extends HookConsumerWidget {
  const SelectClassBaseClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(classUseCase);
    final classList = ref.watch(classUseCase.notifier).state;
    useEffectOnce(() {
      ref.watch(classUseCase.notifier).fetchBaseClass();
      return;
    });
    return TitleAndSelectClassScreen(
      title: 'ベースクラス一覧',
      children: [
        SpaceBox(height: 40.h),
        ListView.builder(
            shrinkWrap: true,
            itemCount: classList.length,
            itemBuilder: (context, index) {
              final classInfo = classList[index];
              return Column(
                children: [
                  ClassCard(
                    isSelected: false,
                    iconText: '${classInfo.frameCount}コマ',
                    iconData: Icons.calendar_today,
                    className: classInfo.name,
                    description: classInfo.overView,
                    primaryCallback: () {
                      ref.watch(selectedClass.notifier).state = classInfo;
                      NavigatorPop(context);
                    },
                    onPrimaryCallback: () => NavigatorPush(
                      context,
                      page: SelectClassDetailPage(classInfo: classInfo),
                    ),
                  ),
                  SpaceBox(height: 16.h),
                ],
              );
            })
      ],
    );
  }
}
