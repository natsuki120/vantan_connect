import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/horizontal_of_text_and_icon.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_design_page.dart';
import 'package:vantan_connect/component/template/class_info/class_detail_design_template.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';

class ClassInUserCalendar extends StatelessWidget {
  const ClassInUserCalendar(
      {super.key, required this.timetable, required this.classState});

  final String timetable;
  final ClassState classState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, top: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push<ClassDetailDesignTemplate>(
            MaterialPageRoute(
              builder: (context) =>
                  ClassDetailDesignPage(classState: classState),
            ),
          );
        },
        child: Table(
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: IntrinsicColumnWidth(),
          },
          children: [
            TableRow(
              children: [
                DescriptionText(
                  text: timetable,
                  textStyle: titleSmall(FontWeight.w300, colorScheme.onSurface),
                ),
                const SpaceBox(
                  width: 20,
                ),
                MainText(
                  text: classState.className,
                  textStyle:
                      titleSmall(FontWeight.w600, colorScheme.onBackground),
                ),
              ],
            ),
            const TableRow(
              children: [
                SpaceBox(height: 0),
                SpaceBox(height: 50),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: HorizontalOfTextAndIcon(text: '担当'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
