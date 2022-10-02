import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/horizontal_of_text_and_icon.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/template/class_detail_design_template.dart';
import 'package:vantan_connect/component/atom/space_box.dart';

class ClassInUserCalendar extends StatelessWidget {
  const ClassInUserCalendar(
      {Key? key, required this.timetable, required this.className})
      : super(key: key);

  final String timetable;
  final String className;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, top: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ClassDetailDesignTemplate(
                className: 'ここに授業の名前が載ります',
              ),
            ),
          );
        },
        child: Table(
          columnWidths: {0: IntrinsicColumnWidth(), 1: IntrinsicColumnWidth()},
          children: [
            TableRow(
              children: [
                DescriptionText(
                  text: timetable,
                  textStyle: titleSmall(FontWeight.w300, colorScheme.onSurface),
                ),
                SpaceBox(
                  width: 20,
                ),
                MainText(
                  text: className,
                  textStyle:
                      titleSmall(FontWeight.w600, colorScheme.onBackground),
                ),
              ],
            ),
            TableRow(
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
