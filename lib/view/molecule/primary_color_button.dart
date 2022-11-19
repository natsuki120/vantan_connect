import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../atom/color_schemes.g.dart';

class PrimaryColorButton extends StatelessWidget {
  const PrimaryColorButton({
    super.key,
    required this.callback,
    required this.child,
    required this.width,
    required this.height,
  });

  final GestureTapCallback callback;
  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: colorScheme.onPrimary,
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.sp),
          ),
        ),
        onPressed: callback,
        child: child,
      ),
    );
  }
}
