import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/domain/studnet/student.dart';
import 'package:vantan_connect/domain/teacher/teacher.dart';
import 'package:vantan_connect/use_case/state/class_dto_notifier.dart';
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
import '../../use_case/state/selectable_class_notifier.dart';

final selectedClass = StateProvider(
  (ref) => ClassDto(
    document: [ClassDocument()],
    classInfo: Class(),
    attendanceBook: AttendanceBook(),
    teacher: [Teacher()],
    student: [Student()],
  ),
);
final isBaseClassSelected = StateProvider((ref) => false);
final isSelectedClassSelected = StateProvider((ref) => false);

class SelectClassPage extends ConsumerWidget {
  const SelectClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ClassDto baseClassInfo = ref.watch(selectedClass);
    List<ClassDto> selectableClassList =
        ref.watch(selectableClass.notifier).state;
    return TitleAndSelectClassScreen(
      title: '時間割を選択',
      children: [
        SpaceBox(height: 40.h),
        baseClassInfo ==
                ClassDto(
                  document: [ClassDocument()],
                  classInfo: Class(),
                  attendanceBook: AttendanceBook(),
                  teacher: [Teacher()],
                  student: [Student()],
                )
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
                      iconText: '${baseClassInfo.classInfo!.frameCount}コマ',
                      iconData: Icons.calendar_today,
                      className: baseClassInfo.classInfo!.name,
                      description: baseClassInfo.classInfo!.overView,
                      primaryCallback: () {},
                      onPrimaryCallback: () => NavigatorPush(
                        context,
                        page: SelectClassBaseClassPage(),
                      ),
                      onPrimaryWhichIsSelectedCallback: () {
                        ref.read(selectedClass.notifier).state = ClassDto(
                          document: [ClassDocument()],
                          classInfo: Class(),
                          attendanceBook: AttendanceBook(),
                          teacher: [Teacher()],
                          student: [Student()],
                        );
                        ref.read(classDto.notifier).deleteClass(baseClassInfo);
                        ref
                            .read(classDto.notifier)
                            .deleteAllClass(selectableClassList);
                        ref.read(isBaseClassSelected.notifier).state = false;
                        ref.read(isSelectedClassSelected.notifier).state =
                            false;
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
                      iconText:
                          '${selectableClassInfo.classInfo!.frameCount}コマ',
                      iconData: Icons.calendar_today,
                      className: selectableClassInfo.classInfo!.name,
                      description: selectableClassInfo.classInfo!.overView,
                      primaryCallback: () {
                        ref.read(isSelectedClassSelected.notifier).state = true;
                        ref
                            .read(classDto.notifier)
                            .registerMyClass(selectableClassInfo);
                      },
                      onPrimaryCallback: () => NavigatorPush(
                        context,
                        page: SelectClassDetailPage(
                            classDto: selectableClassInfo),
                      ),
                      onPrimaryWhichIsSelectedCallback: () {
                        ref
                            .read(classDto.notifier)
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
