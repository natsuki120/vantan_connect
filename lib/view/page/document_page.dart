import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/title_in_organism.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 21.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleInOrganism(
            text: '本日の資料',
            textStyle: headLineBold(colorScheme.onBackground),
          ),
          SpaceBox(height: 16),
          Container(
            width: 368,
            height: 179,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12.sp),
            ),
          ),
        ],
      ),
    );
  }
}
