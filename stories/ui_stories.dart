import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/infrastructure/class_repository.dart';
import 'package:vantan_connect/use_case/class_use_case.dart';
import 'package:vantan_connect/view/page/select_class_base_class_page.dart';

Widget testUi() => ProviderScope(
      overrides: [
        classUseCase.overrideWithProvider(
          StateNotifierProvider(
            (ref) => ClassUseCase(
              ClassRepository(db: FakeFirebaseFirestore()),
            ),
          ),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (BuildContext context, Widget? child) => MaterialApp(
          home: SelectClassBaseClassPage(),
        ),
      ),
    );
