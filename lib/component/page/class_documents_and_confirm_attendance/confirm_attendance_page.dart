import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/view_model/attendance_status_state/attendance_status_state_view_model.dart';
import '../../../model/class_by_day_state/class_by_day_state.dart';
import '../../atom/color_schemes.g.dart';
import '../../molecule/style_by_platform.dart';
import '../../organism/guidance_message.dart';

class ConfirmAttendancePage extends ConsumerStatefulWidget {
  const ConfirmAttendancePage({Key? key, required this.classByDayState})
      : super(key: key);

  final ClassByDayState classByDayState;

  @override
  ConsumerState<ConfirmAttendancePage> createState() =>
      _ConfirmAttendancePageState();
}

class _ConfirmAttendancePageState extends ConsumerState<ConfirmAttendancePage> {
  String? isSelectedItem = '出席確認済み';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref
        .read(attendanceStatusViewModel.notifier)
        .fetchStudentAttendanceStatus(widget.classByDayState);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(attendanceStatusViewModel);
    return Container(
      child: Column(
        children: [
          SpaceBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: GuidanceMessage(
                  mainText: isSelectedItem,
                  mainTextStyle:
                      titleLarge(FontWeight.w600, colorScheme.onBackground),
                ),
              ),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text('出席確認済み'),
                      value: '出席確認済み',
                    ),
                    DropdownMenuItem(
                      child: Text('出席者'),
                      value: '出席',
                    ),
                    DropdownMenuItem(
                      child: Text('欠席者'),
                      value: '欠席',
                    ),
                    DropdownMenuItem(
                      child: Text('遅刻者'),
                      value: '遅刻',
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(
                      () {
                        isSelectedItem = value;
                        ref
                            .read(attendanceStatusViewModel.notifier)
                            .fetchStudentAttendanceStatus(
                              widget.classByDayState,
                            );
                      },
                    );
                  },
                  value: isSelectedItem,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(37.0),
            child: Container(
              height: 500,
              child: GridView.builder(
                itemCount:
                    ref.watch(attendanceStatusViewModel.notifier).state.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  final student = ref
                      .watch(attendanceStatusViewModel.notifier)
                      .state[index];
                  return Text(student.name);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
