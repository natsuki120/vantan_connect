import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/view_model/class_state/class_state_view_model.dart';
import 'package:vantan_connect/view_model/user_state/user_view_model.dart';
import 'model/class_state/class_state.dart';

class ConfirmClassApplication extends StatelessWidget {
  const ConfirmClassApplication({super.key, required this.classList});

  final List<ClassState> classList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('以下の授業をスタッフに申請します。よろしいですか？'),
            SpaceBox(height: 30),
            Container(
              width: 100,
              height: 100,
              child: ListView.builder(
                itemCount: classList.length,
                itemBuilder: (context, index) {
                  final classInfo = classList[index];
                  return Center(child: Text(classInfo.className));
                },
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                return ElevatedButton(
                  onPressed: () async {
                    EasyLoading.show(status: 'loading...');
                    // TODO requiredつける
                    await ref
                        .read(classStateViewModel.notifier)
                        .applyClassToStuff(
                          ref.watch(userViewModel.notifier).state,
                          classList,
                        );
                    EasyLoading.showSuccess('送信しました');
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Text('送信する'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
