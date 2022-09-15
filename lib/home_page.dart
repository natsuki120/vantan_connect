import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/class_application.dart';
import 'package:vantan_connect/examine_application.dart';
import 'package:vantan_connect/view_model/applying_class_state_view_model.dart';
import 'component/atom/color_schemes.g.dart';
import 'component/molecule/style_by_platform.dart';
import 'component/template/attendance_confirmation_modal_template.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(applyingClassStateViewModel.notifier).fetchApplyingClassInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme!.primaryContainer,
        title: Text(
          'ホーム',
          style: titleMedium(
            FontWeight.w600,
            const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => attendanceConfirmationModal(context),
            child: Text('出席ボタン'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<ClassApplication>(
                builder: (_) => ClassApplication(),
              ),
            ),
            child: Text('授業登録ボタン'),
          ),
          Consumer(builder: (context, ref, child) {
            ref.watch(applyingClassStateViewModel);
            return Expanded(
              child: ListView.builder(
                itemCount: ref
                    .watch(applyingClassStateViewModel.notifier)
                    .state
                    .length,
                itemBuilder: (context, index) {
                  final applyingClassInfo = ref
                      .watch(applyingClassStateViewModel.notifier)
                      .state[index];
                  return GestureDetector(
                    child: Column(
                      children: [
                        // Text(applyingClassInfo.name),
                        // Text(applyingClassInfo.className
                        //     .map((className) => className)
                        //     .toString()),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute<ExamineApplication>(
                              builder: (_) => ExamineApplication(
                                  applyingClassState: applyingClassInfo)));
                    },
                  );
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
