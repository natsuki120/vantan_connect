import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../token/space_box.dart';
import '../atom/done_class.dart';

class DoneClassHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('並び替え'), Icon(Icons.arrow_drop_down)],
        ),
        SpaceBox(
          height: 22.h,
        ),
        Column(
          children: [
            DoneClassCard(),
          ],
        ),
      ],
    );
  }
}
