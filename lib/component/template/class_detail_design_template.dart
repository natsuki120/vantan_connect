import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/organism/class_detail_info.dart';
import 'package:vantan_connect/component/organism/custom_app_bar.dart';
import 'package:vantan_connect/component/organism/custom_tab_bar.dart';

class ClassDetailDesignTemplate extends StatelessWidget {
  const ClassDetailDesignTemplate({Key? key, required this.className})
      : super(key: key);

  final String className;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280),
        child: CustomAppBar(
          text: '授業詳細',
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Column(
              children: [
                ClassDetailInfo(className: className),
                CustomTabBar(firstText: '資料', secondText: '出席確認'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
