import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/space_box.dart';
import '../organism/done_class_card.dart';

class DoneClassHistoryTemplate extends StatelessWidget {
  const DoneClassHistoryTemplate({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TitleInMolecule(
                text: '並び替え',
                textStyle: bodyRegular(colorScheme.onBackground),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          SpaceBox(
            height: 22.h,
          ),
          DoneClassCard(title: title, description: description),
          SpaceBox(height: 16.h),
          DoneClassCard(title: title, description: description),
          SpaceBox(height: 16.h),
          DoneClassCard(title: title, description: description),
          SpaceBox(height: 16.h),
          DoneClassCard(title: title, description: description),
          SpaceBox(height: 16.h),
          DoneClassCard(title: title, description: description),
        ],
      ),
    );
  }
}
