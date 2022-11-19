import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/description_text.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';
import 'package:vantan_connect/view/atom/colored_border_box.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/molecule/primary_color_button.dart';
import 'package:vantan_connect/view/atom/tappable_text.dart';

Future attendanceConfirmationWriteReason(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 797,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TappableText(
                    text: 'キャンセル',
                    textStyle: bodyRegular(colorScheme.onBackground),
                    voidCallback: () => Navigator.of(context).pop(),
                  ),
                  Spacer(),
                  MainText(
                    text: '理由を書く',
                    textStyle: headerMedium(colorScheme.onBackground),
                  ),
                  Spacer(flex: 2),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SpaceBox(height: 54),
                      MainText(
                        text: '出欠状況を選択',
                        textStyle: headLineBold(colorScheme.onBackground),
                      ),
                      SpaceBox(height: 20),
                      Row(
                        children: [
                          ColoredBorderBox(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.check),
                                SpaceBox(width: 10),
                                MainText(
                                  text: '遅刻',
                                  textStyle: bodyBold(colorScheme.onBackground),
                                ),
                              ],
                            ),
                            color:
                                colorScheme.primaryContainer.withOpacity(0.35),
                          ),
                          SpaceBox(width: 6),
                          BorderBox(
                            radius: 12,
                            child: MainText(
                              text: '欠席',
                              textStyle: bodyBold(colorScheme.onBackground),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                          ),
                          SpaceBox(width: 6),
                          BorderBox(
                            radius: 12,
                            child: MainText(
                              text: '早退',
                              textStyle: bodyBold(colorScheme.onBackground),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                          ),
                        ],
                      ),
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: colorScheme.onBackground.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      SpaceBox(height: 20),
                      GuidanceMessage(
                        mainText: '対象の授業を選択',
                        subText: '理由を書く対象とする授業を選択してください',
                        mainTextStyle: headLineBold(colorScheme.onBackground),
                        subTextStyle: bodyRegular(colorScheme.onBackground),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spaceSize: 8.h,
                      ),
                      SpaceBox(height: 20),
                      BorderBox(
                        radius: 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      SpaceBox(height: 10),
                      BorderBox(
                        radius: 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      SpaceBox(height: 10),
                      BorderBox(
                        radius: 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      SpaceBox(height: 10),
                      BorderBox(
                        radius: 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      SpaceBox(height: 10),
                      BorderBox(
                        radius: 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      SpaceBox(height: 10),
                      BorderBox(
                        radius: 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      SpaceBox(height: 10),
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: colorScheme.onBackground.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      SpaceBox(height: 20),
                      MainText(
                        text: '理由を記述',
                        textStyle: headLineBold(colorScheme.onBackground),
                      ),
                      SpaceBox(height: 20),
                      BorderBox(
                        radius: 12,
                        child: DescriptionText(
                          text:
                              '先生の生活に近づきつつありながら、頁さえ切ってないのも多少あったのと同じ事です。何ともなかったとみえて、ついに一言も口を開く事ができた。奥さんは最初世の中を見る先生の眼が忽ち開いたのです。',
                          textStyle: bodyRegular(colorScheme.onBackground),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      SpaceBox(height: 30),
                      PrimaryColorButton(
                        callback: () => Navigator.popUntil(
                          context,
                          (route) => route.isFirst,
                        ),
                        width: double.infinity,
                        height: 40,
                        child: MainText(
                          text: '確認',
                          textStyle: bodyBold(colorScheme.background),
                        ),
                      ),
                      SpaceBox(height: 30),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
