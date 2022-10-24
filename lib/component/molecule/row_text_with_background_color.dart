import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/description_text.dart';
import 'package:vantan_connect/component/atom/get_phone_size.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';

class RowTextWithBackgroundColor extends StatelessWidget {
  const RowTextWithBackgroundColor({
    Key? key,
    required this.title,
    required this.description,
    required this.height,
  }) : super(key: key);
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
      alignment: Alignment.center,
      child: Table(
        columnWidths: {
          0: FractionColumnWidth(.4),
          1: FractionColumnWidth(.4),
        },
        children: [
          TableRow(
            children: [
              MainText(
                text: title,
                textStyle: titleMedium(FontWeight.w600, colorScheme.onSurface),
              ),
              DescriptionText(
                text: description,
                textStyle: bodyLarge(FontWeight.w300, colorScheme.onSurface),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
