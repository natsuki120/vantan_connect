import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/check_box/common_container.dart';
import '../molecule/style_by_platform.dart';

class WriteReasonBox extends StatelessWidget {
  const WriteReasonBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GuidanceMessage(
          mainText: 'ここに理由を書かせる',
          mainTextStyle: titleLarge(FontWeight.w600, colorScheme.onBackground),
        ),
        CommonContainer(
          width: double.infinity,
          height: 120,
          color: colorScheme.background,
          borderColor: colorScheme.onSurfaceVariant.withOpacity(0.8),
          child: TextFormField(
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    );
  }
}
