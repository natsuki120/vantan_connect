import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/organism/class_in_user_calendar.dart';
import 'package:vantan_connect/component/organism/weekday_row.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';

class TimetableTemplate extends StatelessWidget {
  const TimetableTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: AppBar(
          backgroundColor: colorScheme.surface,
          elevation: 0.5,
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ColoredBox(
                color: colorScheme.surface,
                child: Column(
                  children: [
                    MainText(
                      text: '時間割',
                      textStyle: titleMedium(
                        FontWeight.w600,
                        colorScheme.onSurface,
                      ),
                    ),
                    SpaceBox(
                      height: 30,
                    ),
                    WeekdayRow(),
                    SpaceBox(height: 10),
                    DescriptionText(
                      text: '9月21日 水曜日',
                      textStyle:
                          labelLarge(FontWeight.w300, colorScheme.onBackground),
                    ),
                    SpaceBox(height: 5),
                  ],
                ),
              ),
            ),
            preferredSize: Size.zero,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClassInUserCalendar(
                timetable: '1限', classState: ClassState(className: 'Flutter')),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.15)),
                ),
              ),
            ),
            ClassInUserCalendar(
                timetable: '2限', classState: ClassState(className: 'Flutter')),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.15)),
                ),
              ),
            ),
            ClassInUserCalendar(
                timetable: '3限', classState: ClassState(className: 'Flutter')),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.15)),
                ),
              ),
            ),
            ClassInUserCalendar(
                timetable: '4限', classState: ClassState(className: 'Flutter')),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.15)),
                ),
              ),
            ),
            ClassInUserCalendar(
                timetable: '5限', classState: ClassState(className: 'Flutter')),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.15)),
                ),
              ),
            ),
            ClassInUserCalendar(
                timetable: '6限', classState: ClassState(className: 'Flutter')),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black.withOpacity(0.15)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
