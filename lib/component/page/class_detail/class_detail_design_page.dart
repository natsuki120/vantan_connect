import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:vantan_connect/component/organism/class_detail_info.dart';
import 'package:vantan_connect/component/organism/custom_app_bar.dart';
import 'package:vantan_connect/component/organism/custom_tab_bar.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_by_day_page.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import '../../../view_model/attendance_status_state/attendance_status_state_view_model.dart';
import '../../../view_model/class_by_day_state/class_by_day_view_model.dart';

class ClassDetailDesignPage extends ConsumerStatefulWidget {
  const ClassDetailDesignPage({super.key, required this.classState});

  final ClassState classState;

  @override
  ConsumerState<ClassDetailDesignPage> createState() =>
      _ClassDetailDesignPageState();
}

class _ClassDetailDesignPageState extends ConsumerState<ClassDetailDesignPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref
        .read(classByDayStateViewModel.notifier)
        .fetchClassByDayInfo(widget.classState);
    ref
        .read(attendanceStatusViewModel.notifier)
        .fetchAllStudentAttendanceStatus(widget.classState);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(classByDayStateViewModel);
    ref.watch(attendanceStatusViewModel);
    final attendanceStateList =
        ref.watch(attendanceStatusViewModel.notifier).state;
    final classByDayList = ref.watch(classByDayStateViewModel.notifier).state;
    final studentList = [
      ...ref.watch(attendanceStatusViewModel.notifier).state
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(280),
          child: CustomAppBar(
            text: '授業詳細',
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Column(
                children: [
                  ClassDetailInfo(className: widget.classState.className),
                  const CustomTabBar(firstText: '履修者', secondText: '一日分の詳細'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(37.0),
              child: GridView.builder(
                itemCount:
                    ref.watch(attendanceStatusViewModel.notifier).state.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  final student = attendanceStateList[index].name;
                  return Text(student);
                },
              ),
            ),
            GridView.builder(
              itemCount: classByDayList.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                final classByDayInfo = classByDayList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(
                        child: classByDayInfo.day != null
                            ? Text(
                                DateFormat('MM/d').format(classByDayInfo.day!),
                              )
                            : Container(),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ClassDetailByDayPage(
                            attendanceStatusState: studentList,
                            classByDayState: classByDayInfo,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
