import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/organism/class_in_user_calendar.dart';
import 'package:vantan_connect/component/organism/weekday_row.dart';
import 'package:vantan_connect/component/atom/space_box.dart';

class TimetableTemplate extends StatelessWidget {
  const TimetableTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: AppBar(
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
            preferredSize: Size.zero,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClassInUserCalendar(timetable: '1限', className: 'AWSプラクティショナ'),
            ClassInUserCalendar(timetable: '2限', className: 'UI/UXデザイン'),
            ClassInUserCalendar(timetable: '3限', className: 'マーケティング'),
            ClassInUserCalendar(timetable: '4限', className: 'Flutter'),
            ClassInUserCalendar(timetable: '5限', className: 'AWSプラクティショナ'),
            ClassInUserCalendar(timetable: '6限', className: 'AWSプラクティショナ'),
          ],
        ),
      ),
    );
  }
}
