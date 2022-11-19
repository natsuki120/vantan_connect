import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/description_text.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/organism/class_card.dart';
import 'package:vantan_connect/view/molecule/primary_color_button.dart';
import 'package:vantan_connect/view/atom/tappable_text.dart';
import 'package:vantan_connect/view/organism/attendance_confirmation_write_reason_modal.dart';

import '../molecule/Icon_and_text.dart';

Future attendanceConfirmationModal(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 566,
        decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28),
          child: Column(
            children: [
              Row(
                children: [
                  MainText(
                    text: '出席確認',
                    textStyle: title1Bold(colorScheme.onBackground),
                  ),
                ],
              ),
              SpaceBox(height: 24),
              DescriptionText(
                text: '授業開始まであと5分です。『出席する』または『遅刻・欠席する』から出席状況を送信してください。',
                textStyle: callOutRegular(colorScheme.onBackground),
              ),
              SpaceBox(height: 24),
              ClassCard(
                timelineList: [],
                underWidget: Row(
                  children: [
                    Spacer(flex: 4),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10,
                    ),
                    Spacer(),
                    IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10),
                    Spacer(),
                    IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10),
                  ],
                ),
              ),
              SpaceBox(height: 40),
              PrimaryColorButton(
                width: double.infinity,
                height: 50,
                callback: () {},
                child: MainText(
                  text: '出席する',
                  textStyle: bodyBold(
                    colorScheme.background,
                  ),
                ),
              ),
              SpaceBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit_outlined, color: colorScheme.primary),
                  SpaceBox(width: 10),
                  TappableText(
                    text: '遅刻・欠席する',
                    textStyle:
                        bodyRegular(colorScheme.primary.withOpacity(0.8)),
                    voidCallback: () =>
                        attendanceConfirmationWriteReason(context),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
