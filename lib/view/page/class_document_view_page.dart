import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/organism/canvas_color_app_bar_with_title_message.dart';
import 'package:vantan_connect/view/page/attendance_book_page.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/custom_tab_bar_which_has_black_text_color.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';
import '../token/space_box.dart';

class ClassDocumentViewPage extends StatelessWidget {
  const ClassDocumentViewPage(
      {Key? key, required this.classDocument, required this.classInfo})
      : super(key: key);

  final Class classInfo;
  final ClassDocument classDocument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CanvasColorAppBarWithTitleMessage(title: 'UI/UXデザイン'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 38.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleInMolecule(
              text: classDocument.title,
              textStyle: title1Bold(colorScheme.onBackground),
            ),
            SpaceBox(height: 11.h),
            IconAndText(
              iconData: Icons.calendar_today_outlined,
              text: 'aaa',
              textStyle: caption1Regular(
                colorScheme.onBackground.withOpacity(0.7),
              ),
              spaceSize: 6.w,
              color: colorScheme.onBackground.withOpacity(0.7),
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            SpaceBox(height: 15.h),
            IconAndText(
              iconData: Icons.table_rows,
              text: '5月10日（火曜）',
              textStyle: caption1Regular(
                colorScheme.onBackground.withOpacity(0.7),
              ),
              spaceSize: 6.w,
              color: colorScheme.onBackground.withOpacity(0.7),
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            CustomTabBar(
              tabs: [
                Tab(text: '出席簿'),
                Tab(text: 'コメント'),
              ],
              tabBarChildren: [
                AttendanceBookPage(classInfo, classDocument),
                Container(),
              ],
              isScrollable: false,
              labelColor: colorScheme.onBackground,
              unselectedLabelColor: colorScheme.onBackground.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }
}
