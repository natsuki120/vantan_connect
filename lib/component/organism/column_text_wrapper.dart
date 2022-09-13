import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/check_box/common_container.dart';
import 'package:vantan_connect/component/molecule/text/description_text.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/const/space_box.dart';

class ColumnTextWrapper extends StatelessWidget {
  const ColumnTextWrapper({
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
    return Column(
      children: [
        CommonContainer(
          width: width,
          height: height,
          color: colorScheme!.primaryContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 24),
                child: MainText(text: mainText, textStyle: mainTextStyle),
              ),
              const SpaceBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: DescriptionText(text: subText, textStyle: subTextStyle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
