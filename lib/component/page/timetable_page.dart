import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/organism/class_in_user_calendar.dart';
import 'package:vantan_connect/component/organism/weekday_row.dart';
import 'package:vantan_connect/view_model/class_state/class_state_view_model.dart';

class TimetablePage extends ConsumerStatefulWidget {
  const TimetablePage({super.key});

  @override
  ConsumerState<TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends ConsumerState<TimetablePage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(classStateViewModel.notifier)
        .fetchClassInfoWhichStudentRegistered();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(classStateViewModel);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.5,
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ColoredBox(
                color: Colors.transparent,
                child: Column(
                  children: [
                    MainText(
                      text: '時間割',
                      textStyle: titleMedium(
                        FontWeight.w600,
                        colorScheme.onSurface,
                      ),
                    ),
                    const SpaceBox(
                      height: 30,
                    ),
                    const WeekdayRow(),
                    const SpaceBox(height: 10),
                    DescriptionText(
                      text: '9月21日 水曜日',
                      textStyle:
                          labelLarge(FontWeight.w300, colorScheme.onBackground),
                    ),
                    const SpaceBox(height: 5),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return ListView.builder(
            itemCount: ref.watch(classStateViewModel.notifier).state.length,
            itemBuilder: (context, index) {
              final classInfo =
                  ref.watch(classStateViewModel.notifier).state[index];
              return Column(
                children: [
                  for (int i = 0; i < classInfo.frameCount; i++)
                    ClassInUserCalendar(
                      timetable: '${i + classInfo.timeTable}限 ',
                      classState: classInfo,
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
