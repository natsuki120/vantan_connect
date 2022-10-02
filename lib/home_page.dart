import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_info_and_all_class_day/class_detail_and_all_class_day_page.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/view_model/class_by_day_state/class_by_day_view_model.dart';
import 'package:vantan_connect/view_model/class_state/class_state_view_model.dart';
import 'component/atom/color_schemes.g.dart';
import 'component/molecule/style_by_platform.dart';
import 'component/page/attendance_confirmation_model_page.dart';
import 'model/class_state/class_state.dart';
import 'package:intl/intl.dart';

class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String _time = '';
  @override
  void initState() {
    super.initState();
    ref.read(classStateViewModel.notifier).fetchClassInfoToConfirmDetail();
    ref.read(classByDayStateViewModel.notifier).fetchClassByDayInfo();
    Timer.periodic(Duration(minutes: 1), _onTimer);
  }

  void _onTimer(Timer timer) {
    var now = DateTime.now();
    var dateFormat = DateFormat('HH:mm');
    var timeString = dateFormat.format(now);
    setState(() => callModal());
  }

  void callModal() {
    for (var classInfo in ref.watch(classByDayStateViewModel.notifier).state) {
      if (classInfo.announce != null) {
        if (DateFormat('HH:mm').format(DateTime.now()) ==
            DateFormat('HH:mm').format(classInfo.announce!)) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            attendanceConfirmationModalPage(
              context: context,
              mainText: '${classInfo.timeTable}限 -${classInfo.className}',
              classByDayState: classInfo,
            );
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(classStateViewModel);
    ref.watch(classByDayStateViewModel);
    print('再描画しました');
    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: colorScheme.surface,
        title: Text(
          'ホーム',
          style: titleMedium(
            FontWeight.w600,
            const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Builder(builder: (context) {
              callModal();
              return Container();
            }),
            GuidanceMessage(
              mainText: '授業一覧',
              mainTextStyle:
                  headLineSmall(FontWeight.w600, colorScheme.onBackground),
            ),
            SpaceBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: ref.watch(classStateViewModel.notifier).state.length,
                itemBuilder: (context, index) {
                  ClassState classInfo =
                      ref.watch(classStateViewModel.notifier).state[index];
                  return Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: colorScheme.onBackground),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: GuidanceMessage(
                            mainText: classInfo.className,
                            mainTextStyle: labelMedium(
                              FontWeight.w600,
                              colorScheme.onBackground,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ClassDetailAndAllClassDayPage(
                                classInfo: classInfo,
                              ),
                            ),
                          );
                        },
                      ),
                      SpaceBox(height: 20)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
