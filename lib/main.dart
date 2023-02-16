import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vantan_connect/page/grades_table_page.dart';
import 'firebase_options.dart';

final hasLoggedProvider = FutureProvider((ref) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  Map studentMap = {
    'name': prefs.getString('name')!,
    'course': prefs.getString('course')!
  };
  return studentMap;
});

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
          home: GradesTablePage(),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
