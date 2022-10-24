import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/page/class_documents_and_confirm_attendance/class_documents_and_confirm_attendance_page.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/view_model/class_by_day_state/class_by_day_view_model.dart';

class AllClassDayPage extends ConsumerStatefulWidget {
  const AllClassDayPage({
    super.key,
    required this.crossAxisCount,
    required this.classInfo,
  });

  final int crossAxisCount;
  final ClassState classInfo;

  @override
  ConsumerState<AllClassDayPage> createState() => _ClassDetailDocumentsState();
}

class _ClassDetailDocumentsState extends ConsumerState<AllClassDayPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref
        .read(classByDayStateViewModel.notifier)
        .fetchClassByDayInfo(widget.classInfo);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(classByDayStateViewModel);
    return GridView.builder(
      itemCount: ref.watch(classByDayStateViewModel.notifier).state.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        final classByDayState =
            ref.watch(classByDayStateViewModel.notifier).state[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Center(
                child: Text(classByDayState.day.toString()),
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push<ClassDocumentsAndConfirmAttendancePage>(
                MaterialPageRoute(
                  builder: (_) => ClassDocumentsAndConfirmAttendancePage(
                    classByDayState: classByDayState,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
