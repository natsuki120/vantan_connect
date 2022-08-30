import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/api/gsheet.dart';
import 'package:vantan_connect/view/home/home_page.dart';
import 'firebase_options.dart';
import 'const/color_schemes.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await gSheetInit();
  runApp(const MyApp());
}

//TODO formfieldのfocuscolorは変えない。太さを変える
//TODO 目のアイコンは青にしたい。同時にhideを変更したい
//TODO 左下を基準にしたい

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: changeColorOnDarkMode(
        ThemeData(brightness: Brightness.light),
      ),
      home: HomePage(),
    );
  }
}
