import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'package:vantan_connect/infrastructure/query_service_repository.dart';
import 'package:vantan_connect/page/test_app.dart';
import '../component/shared/single/buttons/buttons.dart';
import '../component/shared/single/color/color.dart';
import '../component/shared/single/text_style/text_style.dart';

class Login extends HookWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    void setUserInfo(String name) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('name', name);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(hintText: '名前'),
            ),
            SpaceBox(height: 40.sp),
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
                  await QueryServiceRepositoryWhichUseFirebase()
                      .fetchStudentInfo(name: controller.text);
                  setUserInfo(controller.text);
                  EasyLoading.showSuccess('登録しました');
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TestApp(studentName: controller.text)),
                      (_) => false);
                } catch (e) {
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
