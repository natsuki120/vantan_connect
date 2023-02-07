import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/space_box.dart';
import 'package:vantan_connect/component/shared/single/text_style.dart';

import '../../../../shared/single/color.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          CircleAvatar(radius: 30.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'あいうえお',
                style: bodyBold(highEmphasis),
              ),
              Text('あいうえお', style: caption1Regular(lowEmphasis)),
            ],
          )
        ]),
        TableRow(children: [
          SpaceBox(),
          Row(
            children: [
              Text('あいうえお'),
              Text('あいうえお'),
            ],
          )
        ]),
      ],
    );
  }
}
