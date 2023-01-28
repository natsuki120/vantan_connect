import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.callback,
    required this.borderColor,
  }) : super(key: key);

  final Icon icon;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.sp),
          border: Border.all(color: borderColor),
          color: backgroundColor,
        ),
        child: icon,
      ),
    );
  }
}
