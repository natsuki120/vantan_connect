import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/page/attendance_confirmation_model_page.dart';
import 'package:vantan_connect/component/page/class_list_page.dart';
import 'package:vantan_connect/component/template/list/student_list_template.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/view_model/class_by_day_state/class_by_day_view_model.dart';
import 'package:vantan_connect/view_model/class_state/class_state_view_model.dart';

class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  // String _time = '';
  // @override
  // void initState() {
  //   super.initState();
  //   ref.read(classStateViewModel.notifier).fetchClassInfoToConfirmDetail();
  //   ref.read(classByDayStateViewModel.notifier).fetchClassByDayInfo();
  //   Timer.periodic(Duration(minutes: 1), _onTimer);
  // }
  //
  // void _onTimer(Timer timer) {
  //   var now = DateTime.now();
  //   var dateFormat = DateFormat('HH:mm');
  //   var timeString = dateFormat.format(now);
  //   setState(() => callModal());
  // }
  //
  // void callModal() {
  //   for (var classInfo in ref.watch(classByDayStateViewModel.notifier).state) {
  //     if (classInfo.announce != null) {
  //       if (DateFormat('HH:mm').format(DateTime.now()) ==
  //           DateFormat('HH:mm').format(classInfo.announce!)) {
  //         WidgetsBinding.instance.addPostFrameCallback((_) {
  //           attendanceConfirmationModalPage(
  //             context: context,
  //             mainText: '${classInfo.timeTable}限 -${classInfo.className}',
  //             classByDayState: classInfo,
  //           );
  //         });
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    ref.watch(classStateViewModel);
    ref.watch(classByDayStateViewModel);
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('more'),
            ),
            GestureDetector(
              child: ListTile(
                title: Text("授業一覧"),
                trailing: Icon(Icons.arrow_forward),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ClassListPage(),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                title: Text("生徒一覧"),
                trailing: Icon(Icons.arrow_forward),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StudentListTemplate(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => attendanceConfirmationModalPage(
          context: context,
          mainText: '1限 - Flutter',
          classByDayState:
              ClassByDayState(id: 'Hl20bsu6KzH88G8t0ANb', className: 'Flutter'),
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
