import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/use_case/class_use_case.dart';
import 'package:vantan_connect/use_case/selectable_class_notifier.dart';
import 'package:vantan_connect/view/organism/border_box_which_move_to_select_base_class.dart';
import 'package:vantan_connect/view/organism/class_card.dart';
import 'package:vantan_connect/view/organism/title_in_organism.dart';
import 'package:vantan_connect/view/organism/title_with_valueless_box_or_class_card.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/page/select_class_base_class_page.dart';
import 'package:vantan_connect/view/page/select_class_detail_page.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';

final selectedClass = StateProvider((ref) => Class());
final isBaseClassSelected = StateProvider((ref) => false);
final isSelectedClassSelected = StateProvider((ref) => false);

class SelectClassPage extends ConsumerWidget {
  const SelectClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Class baseClassInfo = ref.watch(selectedClass);
    List<Class> selectableClassList = ref.watch(selectableClass.notifier).state;
    return TitleAndSelectClassScreen(
      title: '時間割を選択',
      children: [
        SpaceBox(height: 40.h),
        baseClassInfo == Class()
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
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleInOrganism(
                    text: 'ベースクラス',
                    textStyle: bodyBold(colorScheme.onBackground),
                  ),
                  SpaceBox(height: 20.h),
                  ClassCard(
                    isSelected: true,
                    iconText: '${baseClassInfo.frameCount}コマ',
                    iconData: Icons.calendar_today,
                    className: baseClassInfo.name,
                    description: baseClassInfo.overView,
                    primaryCallback: () {},
                    onPrimaryCallback: () => NavigatorPush(
                      context,
                      page: SelectClassBaseClassPage(),
                    ),
                    onPrimaryWhichIsSelectedCallback: () => NavigatorPush(
                      context,
                      page: SelectClassBaseClassPage(),
                    ),
                  ),
                ],
              ),
        SpaceBox(height: 40.h),
        TitleWithValuelessBoxOrClassCard(
          title: '選択クラス',
          textStyle: bodyBold(colorScheme.onBackground),
          isBaseClassSelected: ref.watch(isBaseClassSelected.notifier).state,
          classCard: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: selectableClassList.length,
              itemBuilder: (context, index) {
                ref.watch(isSelectedClassSelected);
                final selectableClass = selectableClassList[index];
                return Column(
                  children: [
                    ClassCard(
                      isSelected:
                          ref.watch(isSelectedClassSelected.notifier).state,
                      iconText: '${selectableClass.frameCount}コマ',
                      iconData: Icons.calendar_today,
                      className: selectableClass.name,
                      description: selectableClass.overView,
                      primaryCallback: () {
                        ref.watch(isSelectedClassSelected.notifier).state =
                            true;
                      },
                      onPrimaryCallback: () => NavigatorPush(
                        context,
                        page: SelectClassDetailPage(classInfo: selectableClass),
                      ),
                      onPrimaryWhichIsSelectedCallback: () => ref
                          .watch(isSelectedClassSelected.notifier)
                          .state = false,
                    ),
                    SpaceBox(height: 10.h),
                  ],
                );
              }),
        )
      ],
    );
  }
}
