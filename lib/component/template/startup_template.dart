import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/guidance_message.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/organism/background_image_with_shape.dart';
import 'package:vantan_connect/component/organism/guidance_button.dart';
import 'package:vantan_connect/const/space_box.dart';

class StartupTemplate extends StatelessWidget {
  const StartupTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme!.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SpaceBox(height: 144),
          GuidanceMessage(
            mainText: 'タイトルタイトル\nタイトルタイトル',
            mainTextStyle:
                headLineSmall(FontWeight.w600, colorScheme!.onPrimary),
            mainTextAlign: TextAlign.center,
            subText: '',
            subTextStyle:
                headLineSmall(FontWeight.w600, colorScheme!.onPrimary),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              BackgroundImageWithShape(
                imagePath: 'images/women.png',
                color: colorScheme!.background,
                radius: const Radius.elliptical(900, 100),
              ),
              Column(
                children: [
                  GuidanceButton(
                    mainText: 'aaaaaaa',
                    mainCallback: () {},
                    subText: 'aaaaaa',
                    subCallback: () {},
                    textStyle:
                        labelLarge(FontWeight.w600, colorScheme!.onBackground),
                  ),
                  const SpaceBox(height: 60),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
