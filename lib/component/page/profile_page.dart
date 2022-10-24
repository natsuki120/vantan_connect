import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/const_width_and_height.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/row_text_with_background_color.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_design_page.dart';
import 'package:vantan_connect/component/template/class_info/class_detail_design_template.dart';
import 'package:vantan_connect/view_model/user_state/user_view_model.dart';
import '../../view_model/class_state/class_state_view_model.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(classStateViewModel.notifier)
        .fetchClassInfoWhichStudentRegistered();
    ref
        .read(classStateViewModel.notifier)
        .state
        .sort((a, b) => a.timeTable.compareTo(b.timeTable));
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(userViewModel);
    ref.watch(classStateViewModel);
    final user = ref.watch(userViewModel.notifier).state;
    final classList = ref.watch(classStateViewModel.notifier).state;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceBox(height: 68),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainText(
                text: user.name,
                textStyle:
                    headLineMedium(FontWeight.w600, colorScheme.onBackground),
              ),
              const CircleAvatar(),
            ],
          ),
          const SpaceBox(height: 62),
          MainText(
            text: '履修しているクラス',
            textStyle: titleMedium(FontWeight.w600, colorScheme.onBackground),
          ),
          SpaceBox(height: heightUnderTitle),
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: classList.length,
              itemBuilder: (context, index) {
                final classInfo = classList.toSet().toList()[index];
                return Column(
                  children: [
                    GestureDetector(
                      child: RowTextWithBackgroundColor(
                        title: classInfo.selectableBaseClass[0] == 'false'
                            ? 'ベースクラス'
                            : '選択クラス',
                        description: classInfo.className,
                        height: 72,
                      ),
                      onTap: () {
                        Navigator.of(context).push<ClassDetailDesignTemplate>(
                          MaterialPageRoute(
                            builder: (context) =>
                                ClassDetailDesignPage(classState: classInfo),
                          ),
                        );
                      },
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
