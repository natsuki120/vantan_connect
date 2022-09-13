import 'package:flutter/material.dart';
import '../../const/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../guidance_message.dart';
import '../molecule/style_by_platform.dart';
import '../organism/background_image_with_shape.dart';
import '../organism/guidance_button.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme!.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SpaceBox(height: 144),
          GuidanceMessage(
            mainText: 'バンタン専用の\nコミュニケーションアプリ',
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
                    mainText: '（アプリ名）を始める',
                    subText: '日本語テキスト',
                    mainCallback: () {},
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
