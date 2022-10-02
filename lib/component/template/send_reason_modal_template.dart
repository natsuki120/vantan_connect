import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/check_box/check_box_which_has_text_and_icon.dart';
import 'package:vantan_connect/component/organism/guidance_button.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/organism/radio_button.dart';
import 'package:vantan_connect/component/organism/write_reason_box.dart';
import 'package:vantan_connect/component/template/confirm_send_reason_modal_template.dart';
import '../atom/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';

void sendReasonModalTemplate(BuildContext context) {
  var firstBool = false;
  var secondBool = false;
  var thirdBool = false;
  showModalBottomSheet<Container>(
    //ドラッグ可能にする（高さもハーフサイズからフルサイズになる様子）
    isScrollControlled: true,
    context: context,
    backgroundColor: colorScheme.background,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: 797,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SpaceBox(height: 40),
                GuidanceMessage(
                  mainText: 'タイトルタイトル',
                  mainTextStyle:
                      titleLarge(FontWeight.w600, colorScheme.onBackground),
                ),
                StatefulBuilder(builder: (context, setState) {
                  return Row(
                    children: [
                      GestureDetector(
                        child: RadioButton(
                          text: '状況',
                          isSelected: firstBool,
                        ),
                        onTap: () {
                          setState(() {
                            firstBool = !firstBool;
                            if (secondBool) {
                              secondBool = !secondBool;
                            }
                            if (thirdBool) {
                              thirdBool = !thirdBool;
                            }
                          });
                        },
                      ),
                      const SpaceBox(width: 10),
                      GestureDetector(
                        child: RadioButton(
                          text: '状況',
                          isSelected: secondBool,
                        ),
                        onTap: () {
                          setState(() {
                            secondBool = !secondBool;
                            if (firstBool) {
                              firstBool = !firstBool;
                            }
                            if (thirdBool) {
                              thirdBool = !thirdBool;
                            }
                          });
                        },
                      ),
                      const SpaceBox(width: 10),
                      GestureDetector(
                        child: RadioButton(
                          text: '状況',
                          isSelected: thirdBool,
                        ),
                        onTap: () {
                          setState(() {
                            thirdBool = !thirdBool;
                            if (secondBool) {
                              secondBool = !secondBool;
                            }
                            if (firstBool) {
                              firstBool = !firstBool;
                            }
                          });
                        },
                      ),
                    ],
                  );
                }),
                const SpaceBox(height: 64),
                GuidanceMessage(
                  mainText: 'タイトルタイトル',
                  subText: 'せつめいせつめいせつめいせつめいせつめいせつめい',
                  mainTextStyle: titleLarge(
                    FontWeight.w600,
                    colorScheme.onBackground,
                  ),
                  subTextStyle: bodyMedium(
                    FontWeight.w300,
                    colorScheme.onBackground,
                  ),
                ),
                // const SpaceBox(height: 40),
                // const CheckBox(text: '1限 -  UI/UX'),
                // const SpaceBox(height: 10),
                // const CheckBox(text: '2限 - UI/UX'),
                // const SpaceBox(height: 10),
                // const CheckBox(text: '3限 - 空きコマ'),
                // const SpaceBox(height: 10),
                // const CheckBox(text: '4限 - 空きコマ'),
                // const SpaceBox(height: 10),
                // const CheckBox(text: '5限 - AWSプラクティショナー'),
                // const SpaceBox(height: 10),
                // const CheckBox(text: '6限 - AWSプラクティショナー'),
                // const SpaceBox(height: 23),
                // const SpaceBox(height: 30),
                // const WriteReasonBox(),
                // const SpaceBox(height: 64),
                GuidanceButton(
                  mainText: '確認',
                  mainCallback: () => confirmSendReasonModalTemplate(context),
                ),
                const SpaceBox(height: 64),
              ],
            ),
          ),
        ),
      );
    },
  );
}
