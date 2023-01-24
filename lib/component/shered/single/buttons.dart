import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class FilledEnabledButton extends StatelessWidget {
  const FilledEnabledButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.sp),
        color: backgroundColor,
      ),
      child: Text(text, style: textStyle),
    );
  }
}

class FilledEnabledIconButton extends StatelessWidget {
  const FilledEnabledIconButton({
    Key? key,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
    required this.padding,
    required this.backgroundColor,
  }) : super(key: key);

  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final EdgeInsets padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.sp),
        color: backgroundColor,
      ),
      child: Icon(
        iconData,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}

class FilledWithIconEnabledButton extends StatelessWidget {
  const FilledWithIconEnabledButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.backgroundColor,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color backgroundColor;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.sp),
          color: backgroundColor,
        ),
        child: Row(
          children: [
            Icon(iconData, size: iconSize, color: iconColor),
            SpaceBox(width: 11.sp),
            Text(text, style: textStyle),
          ],
        ),
      ),
    );
  }
}

class OriginalUnEnabledOutLinedButton extends StatelessWidget {
  const OriginalUnEnabledOutLinedButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.borderColor,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final Color borderColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: callback,
          child: Text(text, style: textStyle),
          style: OutlinedButton.styleFrom(side: BorderSide(color: borderColor)),
        )
      ],
    );
  }
}

class OriginalEnabledOutLinedButton extends StatelessWidget {
  const OriginalEnabledOutLinedButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.borderColor,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final Color borderColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: callback,
          child: Row(
            children: [
              Icon(Icons.add, size: 12.sp, color: white),
              Text(text, style: textStyle),
            ],
          ),
          style: OutlinedButton.styleFrom(side: BorderSide(color: borderColor)),
        )
      ],
    );
  }
}

class OriginalUnEnabledTextButton extends StatelessWidget {
  const OriginalUnEnabledTextButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(text, style: textStyle),
    );
  }
}

class OriginalEnabledTextButton extends StatelessWidget {
  const OriginalEnabledTextButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Row(
        children: [
          Icon(Icons.add, size: 12.sp, color: white),
          Text(text, style: textStyle),
        ],
      ),
    );
  }
}

class OriginalUnEnabledElevatedButton extends StatelessWidget {
  const OriginalUnEnabledElevatedButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(text, style: textStyle),
    );
  }
}

class OriginalEnabledElevatedButton extends StatelessWidget {
  const OriginalEnabledElevatedButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Row(
        children: [
          Icon(Icons.add, size: 12.sp, color: white),
          Text(text, style: textStyle),
        ],
      ),
    );
  }
}

class UnEnabledTonalButton extends StatelessWidget {
  const UnEnabledTonalButton({
    Key? key,
    required this.callback,
    required this.padding,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
  }) : super(key: key);

  final VoidCallback callback;
  final EdgeInsets padding;
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        color: backgroundColor,
        padding: padding,
        child: Text(text, style: textStyle),
      ),
    );
  }
}

class EnabledTonalButton extends StatelessWidget {
  const EnabledTonalButton({
    Key? key,
    required this.callback,
    required this.padding,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
  }) : super(key: key);

  final VoidCallback callback;
  final EdgeInsets padding;
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        color: backgroundColor,
        padding: padding,
        child: Row(
          children: [
            Icon(Icons.add, size: 12.sp, color: white),
            Text(text, style: textStyle),
          ],
        ),
      ),
    );
  }
}
