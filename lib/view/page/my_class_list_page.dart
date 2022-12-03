import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:vantan_connect/view/organism/button_when_press_color_changing.dart';
import 'package:vantan_connect/view/organism/canvas_color_app_bar_with_title_message.dart';
import 'package:vantan_connect/view/organism/class_card_with_image.dart';
import 'package:vantan_connect/view/page/class_detail_page.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';
import '../../use_case/state/class_use_case.dart';
import '../token/space_box.dart';

class MyClassListPage extends HookConsumerWidget {
  const MyClassListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(classUseCase);
    List<Class> myClassList = ref.watch(classUseCase.notifier).state;
    useEffectOnce(() {
      ref.watch(classUseCase.notifier).fetchClassInfo();
      return;
    });
    return Scaffold(
      appBar: CanvasColorAppBarWithTitleMessage(title: '選択した授業'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 22.0.h, horizontal: 16.w),
        child: Column(
          children: [
            Row(
              children: [
                ButtonWhenPressColorChanging(
                  onChanged: true,
                  borderRadius: BorderRadius.circular(8.sp),
                  text: '前期',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
                SpaceBox(width: 8.w),
                ButtonWhenPressColorChanging(
                  onChanged: false,
                  borderRadius: BorderRadius.circular(8.sp),
                  text: '後期',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
                Spacer(),
                Icon(Icons.menu),
              ],
            ),
            SpaceBox(height: 16.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: myClassList.length,
                      itemBuilder: (context, index) {
                        final myClass = myClassList[index];
                        return Column(
                          children: [
                            GestureDetector(
                              child: ClassCardWithImage(classInfo: myClass),
                              onTap: () => NavigatorPush(
                                context,
                                page: ClassDetailPage(classInfo: myClass),
                              ),
                            ),
                            SpaceBox(height: 16.h),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
