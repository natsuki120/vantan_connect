import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/view/atom/original_image.dart';
import '../../domain/class/class.dart';
import '../atom/colored_border_box.dart';
import '../token/style_by_platform.dart';
import '../token/color_schemes.g.dart';
import '../molecule/image_and_user_info.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({
    Key? key,
    required this.classDto,
  }) : super(key: key);

  final ClassDto classDto;

  @override
  Widget build(BuildContext context) {
    print(classDto.teacher![0].userImagePath);
    return ColoredBorderBox(
      color: colorScheme.surfaceVariant.withOpacity(0.5),
      padding: EdgeInsets.symmetric(
        horizontal: 16.sp,
        vertical: 20.sp,
      ),
      child: Row(
        children: [
          ImageAndUserInfo(
            url:
                'https://www.techfirm.co.jp/blog/wp-content/uploads/2021/09/uiux-scaled.jpg',
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classDto.teacher![0].name,
                  style: headLineBold(colorScheme.onBackground),
                ),
                Text(
                  classDto.teacher![0].job,
                  style: headLineRegular(colorScheme.onBackground),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
