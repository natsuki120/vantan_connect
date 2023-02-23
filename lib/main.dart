import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/page/grades_table_page.dart';
import 'package:vantan_connect/page/login.dart';
import 'package:vantan_connect/page/test_app.dart';
import 'firebase_options.dart';

Future<String?> searchLoggedUserNameFromLocalData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
  return prefs.getString('name');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myAccount = ref.watch(myAccountProvider.notifier).state;
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
          home: FutureBuilder(
            future: searchLoggedUserNameFromLocalData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                EasyLoading.show(status: '読み込み中');
              }
              if (snapshot.hasData) {
                if (myAccount.runtimeType == Student) {
                  return TestApp();
                  //  TODO ユーザー属性がもう一つ追加させるかもしれないので、myAccountのようなProviderをもう一つ追加する
                } else {
                  return GradesTablePage();
                }
              } else
                return Login();
            },
          ),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
