import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/view/initial_page.dart';
import 'firebase_options.dart';
import 'const/color_schemes.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: changeColorOnDarkMode(ThemeData(brightness: Brightness.dark)),
      home: const InitialPage(),
    );
  }
}
