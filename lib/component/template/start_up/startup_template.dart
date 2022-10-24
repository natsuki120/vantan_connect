import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/organism/background_image_with_shape.dart';
import 'package:vantan_connect/component/organism/guidance_button.dart';
import 'package:vantan_connect/component/template/start_up/phone_number_verification_template.dart';

import '../../page/login/login_start_up_page.dart';
import '../login/login_start_up_template.dart';

class StartupTemplate extends StatelessWidget {
  const StartupTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SpaceBox(height: 144),
          // SpaceBox(height: getPhoneSize(context).height * 0.15),
          MainText(
            text: 'バンタン専用の\nコミュニケーションアプリ',
            textStyle: headLineSmall(FontWeight.w600, colorScheme.onPrimary),
            textAlign: TextAlign.center,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              BackgroundImageWithShape(
                imagePath: 'images/women.png',
                color: colorScheme.background,
                radius: const Radius.elliptical(900, 100),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    GuidanceButton(
                      mainText: '新規登録',
                      mainCallback: () => Navigator.of(context)
                          .push<PhoneNumberVerificationTemplate>(
                        MaterialPageRoute(
                          builder: (context) =>
                              const PhoneNumberVerificationTemplate(),
                        ),
                      ),
                      subText: 'ログイン',
                      subCallback: () =>
                          Navigator.of(context).push<LoginStartUpTemplate>(
                        MaterialPageRoute(
                          builder: (context) => LoginStartUpPage(),
                        ),
                      ),
                      textStyle:
                          labelLarge(FontWeight.w600, colorScheme.onBackground),
                    ),
                    const SpaceBox(height: 60),
                    // SpaceBox(height: getPhoneSize(context).height * 0.065)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
