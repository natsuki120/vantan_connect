import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class_document/class_document.dart';
import '../token/space_box.dart';
import '../organism/done_class_card.dart';

class DoneClassHistoryPage extends StatelessWidget {
  const DoneClassHistoryPage({super.key, required this.documentList});
  final List<ClassDocument> documentList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TitleMessage(
                text: '並び替え',
                textStyle: bodyRegular(colorScheme.onBackground),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          ListView.builder(
            itemCount: documentList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              ClassDocument document = documentList[index];
              return Column(
                children: [
                  DoneClassCard(
                    title: document.title,
                    description: document.description,
                  ),
                  SpaceBox(height: 16.h),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
