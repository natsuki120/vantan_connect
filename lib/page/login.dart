import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final menuState = useState('応用クラス');
    final controller = useTextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: controller,
            decoration: const InputDecoration(hintText: '名前'),
          ),
          SpaceBox(height: 40.sp),
          DropdownButton(
            items: const [
              DropdownMenuItem(
                child: Text('応用クラス'),
                value: '応用クラス',
              ),
              DropdownMenuItem(
                child: Text('基礎Aクラス'),
                value: '基礎Aクラス',
              ),
              DropdownMenuItem(
                child: Text('基礎Bクラス'),
                value: '基礎Bクラス',
              ),
              DropdownMenuItem(
                child: Text('基礎Cクラス'),
                value: '基礎Cクラス',
              ),
            ],
            onChanged: (value) => menuState.value = value.toString(),
            value: menuState.value,
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
                await QueryServiceRepositoryWhichUseFirebase()
                    .login(name: controller.text, course: menuState.value);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestApp(),
                    ),
                    (_) => false);
              } catch (e) {
                throw ('存在しないユーザーです');
              }
            },
          ),
        ],
      ),
    );
  }
}
