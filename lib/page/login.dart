import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'package:vantan_connect/infrastructure/query_service/query_service_repository.dart';
import '../component/shared/single/buttons/buttons.dart';
import '../component/shared/single/color/color.dart';
import '../component/shared/single/text_style/text_style.dart';

class Login extends HookConsumerWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailTextController,
              decoration: const InputDecoration(hintText: 'メールアドレス'),
            ),
            SpaceBox(height: 40.sp),
            TextFormField(
              controller: passwordTextController,
              decoration: const InputDecoration(hintText: 'パスワード'),
            ),
            SpaceBox(height: 60.sp),
            FilledEnabledButton(
              text: 'ログイン',
              textStyle: bodyBold(onPrimary),
              padding: EdgeInsets.symmetric(
                horizontal: 145.sp,
                vertical: 13.sp,
              ),
              backgroundColor: primary,
              callback: () async {
                try {
                  EasyLoading.show();
                  await ref.watch(authProvider).signInWithEmail(
                      emailTextController.text, passwordTextController.text);
                  final student = await QueryServiceRepositoryWhichUseFirebase()
                      .identifyStudent(email: 'synchro0718@icloud.com');
                  await ref
                      .watch(myAccount.notifier)
                      .update((state) => state = student);
                  EasyLoading.showSuccess('識別しました');
                } catch (e) {
                  print(e);
                  EasyLoading.showError('存在しないユーザーです');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
