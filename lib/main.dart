import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/template/start_up/startup_template.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

//TODO formfieldのfocuscolorは変えない。太さを変える
//TODO 目のアイコンは青にしたい。同時にhideを変更したい
//TODO 左下を基準にしたい
//TODO 食べログのatomic designを採用する
// TODO 出席モーダルのデザインを整える
// TODO appBarとbodyの背景色を揃える
// TODO flutter_hocksの検討。

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
      home: const StartupTemplate(),
      builder: EasyLoading.init(),
    );
  }
}
