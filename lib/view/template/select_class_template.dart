import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';
import 'package:vantan_connect/view/atom/colored_border_box.dart';
import 'package:vantan_connect/view/template/select_class_base_class_template.dart';

class SelectClassTemplate extends StatelessWidget {
  const SelectClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.onBackground,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainText(
                text: '時間割を作成',
                textStyle: title1Bold(colorScheme.onBackground),
              ),
              SpaceBox(height: 40.h),
              MainText(
                text: 'ベースクラス',
                textStyle: bodyBold(colorScheme.onBackground),
              ),
              SpaceBox(height: 20.h),
              BorderBox(
                radius: 12,
                child: Column(
                  children: [
                    IconButton(
                      color: colorScheme.primary,
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SelectClassBaseClassTemplate(),
                        ),
                      ),
                      icon: Icon(
                        Icons.add_circle,
                        size: 40.sp,
                      ),
                    ),
                    SpaceBox(height: 10.h),
                    MainText(
                      text: '選択する',
                      textStyle: bodyRegular(colorScheme.onBackground),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 165.sp,
                  vertical: 30.sp,
                ),
              ),
              SpaceBox(height: 40.h),
              MainText(
                text: '選択科目',
                textStyle: bodyBold(colorScheme.onBackground),
              ),
              SpaceBox(height: 20.h),
              ColoredBorderBox(
                child: Container(),
                padding: EdgeInsets.symmetric(
                  horizontal: 165.sp,
                  vertical: 60.sp,
                ),
                color: Colors.grey.withOpacity(0.25),
              ),
              SpaceBox(height: 10.h),
              ColoredBorderBox(
                child: Container(),
                padding: EdgeInsets.symmetric(
                  horizontal: 165.sp,
                  vertical: 60.sp,
                ),
                color: Colors.grey.withOpacity(0.25),
              ),
              SpaceBox(height: 10.h),
              ColoredBorderBox(
                child: Container(),
                padding: EdgeInsets.symmetric(
                  horizontal: 165.w,
                  vertical: 60.h,
                ),
                color: Colors.grey.withOpacity(0.25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
