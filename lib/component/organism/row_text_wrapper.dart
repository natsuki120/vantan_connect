import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/check_box/common_container.dart';
import 'package:vantan_connect/component/molecule/text/description_text.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';

class RowTextWrapper extends StatelessWidget {
  const RowTextWrapper({
    super.key,
    required this.mainText,
    required this.mainTextStyle,
    required this.subText,
    required this.subTextStyle,
    required this.width,
    required this.height,
  });

  final String mainText;
  final TextStyle mainTextStyle;
  final String subText;
  final TextStyle subTextStyle;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonContainer(
          width: width,
          height: height,
          color: colorScheme.primaryContainer,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainText(text: mainText, textStyle: mainTextStyle),
              DescriptionText(text: subText, textStyle: subTextStyle)
            ],
          ),
        ),
      ],
    );
  }
}
