import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/horizontal_of_text_and_icon.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';

class ClassDetailInfo extends StatelessWidget {
  const ClassDetailInfo({Key? key, required this.className}) : super(key: key);

  final String className;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainText(
            text: className,
            textStyle: titleLarge(FontWeight.w600, colorScheme.onBackground),
          ),
          SpaceBox(height: 31),
          Table(
            columnWidths: {0: FlexColumnWidth(0.4), 1: FlexColumnWidth(0.6)},
            children: [
              TableRow(
                children: [
                  DescriptionText(
                    text: '時間',
                    textStyle:
                        labelLarge(FontWeight.w300, colorScheme.onBackground),
                  ),
                  DescriptionText(
                    text: '時間',
                    textStyle:
                        labelLarge(FontWeight.w300, colorScheme.onBackground),
                  ),
                ],
              ),
              TableRow(
                children: [
                  DescriptionText(
                    text: '担当者',
                    textStyle:
                        labelLarge(FontWeight.w300, colorScheme.onBackground),
                  ),
                  HorizontalOfTextAndIcon(text: '山田太郎'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
