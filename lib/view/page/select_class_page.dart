import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/border_box_which_move_to_select_base_class.dart';
import 'package:vantan_connect/view/organism/class_card.dart';
import 'package:vantan_connect/view/organism/title_in_organism.dart';
import 'package:vantan_connect/view/organism/title_with_valueless_box_or_class_card.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/page/select_class_base_class_page.dart';
import 'package:vantan_connect/view/page/select_class_detail_page.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/const_width_and_height.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';
import '../../use_case/state/class_use_case.dart';
import '../../use_case/state/selectable_class_notifier.dart';

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
                    EdgeInsets.symmetric(horizontal: 165.w, vertical: 26.h),
                radius: 12.sp,
                buttonPadding: EdgeInsets.zero,
                titleTextStyle: bodyBold(colorScheme.onBackground),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
                child: Column(
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
                      onPrimaryWhichIsSelectedCallback: () {
                        ref
                            .read(classUseCase.notifier)
                            .deleteClass(baseClassInfo);
                        ref.read(selectedClass.notifier).state = Class();
                        ref
                            .read(classUseCase.notifier)
                            .deleteAllClass(selectableClassList);
                        ref.read(isBaseClassSelected.notifier).state = false;
                        NavigatorPush(
                          context,
                          page: SelectClassBaseClassPage(),
                        );
                      },
                    ),
                  ],
                ),
              ),
        SpaceBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
          child: TitleWithValuelessBoxOrClassCard(
            title: '選択クラス',
            textStyle: bodyBold(colorScheme.onBackground),
            isBaseClassSelected: ref.watch(isBaseClassSelected.notifier).state,
            classCard: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: selectableClassList.length,
              itemBuilder: (context, index) {
                ref.watch(isSelectedClassSelected);
                final selectableClassInfo = selectableClassList[index];
                return Column(
                  children: [
                    ClassCard(
                      isSelected:
                          ref.watch(isSelectedClassSelected.notifier).state,
                      iconText: '${selectableClassInfo.frameCount}コマ',
                      iconData: Icons.calendar_today,
                      className: selectableClassInfo.name,
                      description: selectableClassInfo.overView,
                      primaryCallback: () {
                        ref.read(isSelectedClassSelected.notifier).state = true;
                        ref
                            .read(classUseCase.notifier)
                            .registerMyClass(selectableClassInfo);
                      },
                      onPrimaryCallback: () => NavigatorPush(
                        context,
                        page: SelectClassDetailPage(
                            classInfo: selectableClassInfo),
                      ),
                      onPrimaryWhichIsSelectedCallback: () {
                        ref
                            .read(classUseCase.notifier)
                            .deleteClass(selectableClassInfo);
                        ref.read(isSelectedClassSelected.notifier).state =
                            false;
                      },
                    ),
                    SpaceBox(height: 10.h),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
