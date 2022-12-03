import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';

class ButtonWhenPressColorChanging extends StatelessWidget {
  const ButtonWhenPressColorChanging({
    Key? key,
    required this.onChanged,
    required this.borderRadius,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  final bool onChanged;
  final BorderRadius borderRadius;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return onChanged
        ? DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withOpacity(0.8),
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
              child: IconAndText(
                iconData: Icons.check,
                text: text,
                textStyle: textStyle,
                spaceSize: 10.w,
                color: colorScheme.onBackground,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
          )
        : DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme.background,
              border: Border.all(color: colorScheme.outline),
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
              child: TitleMessage(
                text: text,
                textStyle: textStyle,
              ),
            ),
          );
  }
}
