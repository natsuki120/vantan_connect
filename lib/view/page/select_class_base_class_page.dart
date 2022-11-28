import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/use_case/class_use_case.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/organism/class_card_in_register_page.dart';
import '../atom/color_schemes.g.dart';

class SelectClassBaseClassPage extends HookConsumerWidget {
  const SelectClassBaseClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(classUseCase);
    final classList = ref.watch(classUseCase.notifier).state;
    print(classList);
    useEffectOnce(() {
      ref.watch(classUseCase.notifier).fetchBaseClass();
      return;
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.onBackground,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: 'ベースクラス一覧',
              textStyle: title1Bold(colorScheme.onBackground),
            ),
            SpaceBox(height: 40.h),
            Expanded(
              child: ListView.builder(
                itemCount: classList.length,
                itemBuilder: (context, index) {
                  final classState = classList[index];
                  return Column(
                    children: [
                      ClassCardInRegisterPage(classInfo: classState),
                      SpaceBox(height: 16.h),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
