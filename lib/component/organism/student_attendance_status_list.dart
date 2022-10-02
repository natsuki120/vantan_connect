import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/colord_circle_container.dart';
import 'package:vantan_connect/component/molecule/custom_icon.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';

class StudentAttendanceStatusListElement extends StatelessWidget {
  StudentAttendanceStatusListElement(
      {Key? key,
      required this.studentName,
      required this.statusIcon,
      this.locationIcon,
      required this.circleColor,
      required this.statusIconColor})
      : super(key: key);
  final String studentName;
  final IconData statusIcon;
  IconData? locationIcon;
  final Color circleColor;
  final Color statusIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colorScheme.onBackground.withOpacity(0.3),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          ColoredCircleContainer(
            color: circleColor,
            child: CustomIcon(
              color: statusIconColor,
              iconData: statusIcon,
            ),
            width: 28,
            height: 28,
          ),
          SpaceBox(width: 20),
          MainText(
            text: studentName,
            textStyle: bodyLarge(FontWeight.w300, colorScheme.onBackground),
          ),
          SpaceBox(width: 50),
          locationIcon != null
              ? CustomIcon(
                  color: colorScheme.onBackground, iconData: locationIcon!)
              : SpaceBox(width: 24),
          SpaceBox(width: 30),
          Text('ここに理由を記載するう'),
        ],
      ),
    );
  }
}
