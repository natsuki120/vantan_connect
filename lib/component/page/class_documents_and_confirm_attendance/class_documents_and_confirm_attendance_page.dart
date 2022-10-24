import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/page/class_documents_and_confirm_attendance/confirm_attendance_page.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import '../../../view_model/document_state/document_state_view_model.dart';
import '../../atom/color_schemes.g.dart';
import '../../molecule/style_by_platform.dart';
import '../../organism/guidance_message.dart';

class ClassDocumentsAndConfirmAttendancePage extends ConsumerStatefulWidget {
  const ClassDocumentsAndConfirmAttendancePage(
      {Key? key, required this.classByDayState})
      : super(key: key);

  final ClassByDayState classByDayState;

  @override
  ConsumerState<ClassDocumentsAndConfirmAttendancePage> createState() =>
      _ClassDocumentsAndConfirmAttendancePageState();
}

class _ClassDocumentsAndConfirmAttendancePageState
    extends ConsumerState<ClassDocumentsAndConfirmAttendancePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref
        .watch(documentStateViewModel.notifier)
        .fetchDocumentWhichUseInClass(widget.classByDayState);
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(documentStateViewModel);
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.classByDayState.day.toString()),
          bottom: TabBar(
            tabs: [
              GuidanceMessage(
                mainText: '資料',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              ),
              GuidanceMessage(
                mainText: '出席確認',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              itemCount:
                  ref.watch(documentStateViewModel.notifier).state.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                final document =
                    ref.watch(documentStateViewModel.notifier).state[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Center(child: Text(document.text)),
                  ),
                );
              },
            ),
            ConfirmAttendancePage(classByDayState: widget.classByDayState),
          ],
        ),
      ),
    );
  }
}
