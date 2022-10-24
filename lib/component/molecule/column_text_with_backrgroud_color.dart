import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/atom/get_phone_size.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';

class ColumnTextWithBackgroundColor extends StatelessWidget {
  const ColumnTextWithBackgroundColor(
      {Key? key,
      required this.title,
      required this.description,
      required this.height})
      : super(key: key);

  final String title;
  final String description;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getPhoneSize(context).width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorScheme.primaryContainer.withOpacity(0.5),
      ),
      child: Column(
        children: [
          SpaceBox(height: 25),
          Table(
            columnWidths: {
              0: FractionColumnWidth(.5),
              1: FractionColumnWidth(.3),
            },
            children: [
              TableRow(
                children: [
                  MainText(
                    text: title,
                    textStyle:
                        titleMedium(FontWeight.w600, colorScheme.onSurface),
                  ),
                  SpaceBox(),
                ],
              ),
            ],
          ),
          SpaceBox(height: 10),
          Table(
            columnWidths: {
              0: FractionColumnWidth(.75),
            },
            children: [
              TableRow(
                children: [
                  DescriptionText(
                    text: description,
                    textStyle:
                        titleMedium(FontWeight.w300, colorScheme.onSurface),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
