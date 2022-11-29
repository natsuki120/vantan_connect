import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/color_schemes.g.dart';

class HorizontalWeekday extends HookWidget {
  const HorizontalWeekday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedDay = useState('月');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => selectedDay.value = '月',
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: selectedDay.value == '月'
                ? BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
            child: MainText(
              text: '月',
              textStyle: selectedDay.value == '月'
                  ? labelMedium(FontWeight.w600, colorScheme.background)
                  : labelMedium(FontWeight.w300, colorScheme.onBackground),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => selectedDay.value = '火',
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: selectedDay.value == '火'
                ? BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
            child: MainText(
              text: '火',
              textStyle: selectedDay.value == '火'
                  ? labelMedium(FontWeight.w600, colorScheme.background)
                  : labelMedium(FontWeight.w300, colorScheme.onBackground),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => selectedDay.value = '水',
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: selectedDay.value == '水'
                ? BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
            child: MainText(
              text: '水',
              textStyle: selectedDay.value == '水'
                  ? labelMedium(FontWeight.w600, colorScheme.background)
                  : labelMedium(FontWeight.w300, colorScheme.onBackground),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => selectedDay.value = '木',
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: selectedDay.value == '木'
                ? BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
            child: MainText(
              text: '木',
              textStyle: selectedDay.value == '木'
                  ? labelMedium(FontWeight.w600, colorScheme.background)
                  : labelMedium(FontWeight.w300, colorScheme.onBackground),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => selectedDay.value = '金',
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: selectedDay.value == '金'
                ? BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
            child: MainText(
              text: '金',
              textStyle: selectedDay.value == '金'
                  ? labelMedium(FontWeight.w600, colorScheme.background)
                  : labelMedium(FontWeight.w300, colorScheme.onBackground),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => selectedDay.value = '土',
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: selectedDay.value == '土'
                ? BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
            child: MainText(
              text: '土',
              textStyle: selectedDay.value == '土'
                  ? labelMedium(FontWeight.w600, colorScheme.background)
                  : labelMedium(FontWeight.w300, colorScheme.onBackground),
            ),
          ),
        ),
      ],
    );
  }
}
