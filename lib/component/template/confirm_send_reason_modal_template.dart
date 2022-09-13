import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/primary_color_button.dart';
import 'package:vantan_connect/component/organism/check_box.dart';
import 'package:vantan_connect/component/organism/column_text_wrapper.dart';
import 'package:vantan_connect/component/organism/guidance_button.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/organism/radio_button.dart';
import 'package:vantan_connect/component/organism/row_text_wrapper.dart';
import 'package:vantan_connect/component/organism/write_reason_box.dart';
import '../../const/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';

void confirmSendReasonModalTemplate(BuildContext context) {
  showModalBottomSheet<Container>(
    //ドラッグ可能にする（高さもハーフサイズからフルサイズになる様子）
    isScrollControlled: true,
    context: context,
    backgroundColor: colorScheme!.background,
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
                      titleLarge(FontWeight.w600, colorScheme!.onBackground),
                ),
                RowTextWrapper(
                  mainText: '状況状況',
                  mainTextStyle:
                      titleMedium(FontWeight.w600, colorScheme!.onSurface),
                  subText: 'その他',
                  subTextStyle:
                      bodyLarge(FontWeight.w300, colorScheme!.onSurface),
                  width: 200,
                  height: 72,
                ),
                SpaceBox(height: 8),
                ColumnTextWrapper(
                  mainText: '授業授業授業',
                  mainTextStyle:
                      titleMedium(FontWeight.w600, colorScheme!.onSurface),
                  subText: '授業名',
                  subTextStyle:
                      bodyLarge(FontWeight.w300, colorScheme!.onSurface),
                  width: double.infinity,
                  height: 272,
                ),
                SpaceBox(height: 8),
                ColumnTextWrapper(
                  mainText: '理由',
                  mainTextStyle:
                      titleMedium(FontWeight.w600, colorScheme!.onSurface),
                  subText:
                      '先生の生活に近づきつつありながら、頁さえ切ってないのも多少あったのと同じ事です。何ともなかったとみえて、ついに一言も口を開く事ができた。奥さんは最初世の中を見る先生の眼が忽ち開いたのです。先生の生活に近づきつつありながら、',
                  subTextStyle:
                      bodyLarge(FontWeight.w300, colorScheme!.onSurface),
                  width: double.infinity,
                  height: 388,
                ),
                SpaceBox(height: 8),
                PrimaryColorButton(text: '送信する', callback: () {}),
              ],
            ),
          ),
        ),
      );
    },
  );
}
