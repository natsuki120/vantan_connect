import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/vantan_life.dart';

Widget testUi() => ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) => const MaterialApp(
        home: VantanLife(),
      ),
    );
