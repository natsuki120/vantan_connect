import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../infrastructure/query_service/query_service_repository.dart';
import '../../../../page/grades_table_page.dart';
import '../../../../page/test_app.dart';
import '../../../shared/single/riverpod/riverpod.dart';

Future<void> loginProcess(
    {required WidgetRef ref,
    required String name,
    required BuildContext context,
    required int currentSection}) async {
  try {
    EasyLoading.show(status: '読み込み中');
    final prefs = await SharedPreferences.getInstance();
    try {
      ref.watch(myAccountProvider.notifier).state =
          await QueryServiceRepositoryWhichUseFirebase()
              .identifyStudent(name: name);
    } catch (e) {
      await QueryServiceRepositoryWhichUseFirebase().identifyStuff(name: name);
    }
    prefs.setString('name', ref.watch(myAccountProvider.notifier).state.name);
    EasyLoading.showSuccess('識別しました');
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>
            currentSection == 0 ? TestApp() : GradesTablePage(),
      ),
    );
  } catch (e) {
    EasyLoading.showError('存在しないユーザーです');
  }
}
