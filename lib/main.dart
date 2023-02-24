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
//Grades_Table　具体的には不必要なプロパティの削除 効率化できる点は効率化する できればtokenとか早めに導入したい

//時間があればtempのやつを反映させておきたい

//School Leaderを参考(未定) devで相談しながら　→解決済み
// 
//1 授業から直接成績を見れるように変更する
//2 出席機能 兼　管理機能 わかりやすくしたいから編集ボタンを押してステータスを変えられるように
// 右上に編集のテキストボタン 押すことで遅刻のやつがElevatedButtonになり(遅刻を押すと欠席へ欠席を押すとみたいにあらかじめonpressedで決めておく）　　決定とキャンセルが現れる
//もちろん細かい調整は必要だしだけど　やってみる　編集可能を視覚的に スクロールをロックする tabを全てContainerで置き換わるようにhooksのやつを少しずつ導入していきたいね tabをContainerにするだけでいい感じ
//今後　権限に応じて編集機能がつく  みたいな特定のこうし限定など 　決定確認
// 出席を2回する...のか


//CIRcular indicatorの処理はインターネットを切って行う
//ボタンは統一しよう textButtonとあれをセットで同時制御で行う