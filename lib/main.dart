import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/api/gsheet.dart';
import 'package:vantan_connect/view/home/home_page.dart';
<<<<<<< HEAD
=======
import 'package:vantan_connect/view/initial/initial_page.dart';
import 'package:vantan_connect/view/login.dart';
import 'package:vantan_connect/view/profile_page.dart';
>>>>>>> a341bdf (✨ create profile page and function edit profile)
import 'firebase_options.dart';
import 'component/atom/color_schemes.g.dart';

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
      home: const HomePage(),
    );
  }
}
