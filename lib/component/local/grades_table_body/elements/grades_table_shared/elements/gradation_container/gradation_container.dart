import 'package:flutter/material.dart';

import '../../../../../../shared/token/color/color.dart';

class GradationContainer extends StatelessWidget {
  GradationContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            surfaceTertiary.withOpacity(0),
            surfaceTertiary.withOpacity(0.05),
          ],
          stops: const [
            0.5,
            1.0,
          ],
        ),
      ),
      child: child,
    );
  }
}
