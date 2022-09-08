import 'package:flutter/material.dart';

FontWeight? fontWeight;
const regular = 'regular';
const medium = 'medium';
const bold = 'bold';

TextStyle bodyLarge(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 16,
    );

TextStyle bodyMedium(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 14,
    );

TextStyle bodySmall(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 12,
    );

TextStyle displayLarge(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 58,
    );
TextStyle displayMedium(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 46,
    );
TextStyle displaySmall(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 36,
    );

TextStyle headLineLarge(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 32,
    );
TextStyle headLineMedium(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 28,
    );
TextStyle headLineSmall(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 24,
    );

TextStyle labelLarge(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 14,
    );
TextStyle labelMedium(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 12,
    );
TextStyle labelSmall(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 10,
    );

TextStyle titleLarge(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 22,
    );
TextStyle titleMedium(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 24,
    );
TextStyle titleSmall(String weight, Color color) => TextStyle(
      color: color,
      fontWeight: selectFontWeight(weight),
      fontSize: 14,
    );

FontWeight? selectFontWeight(String fontWeightName) {
  switch (fontWeightName) {
    case regular:
      fontWeight = FontWeight.w400;
      break;
    case medium:
      fontWeight = FontWeight.w500;
      break;
    case bold:
      fontWeight = FontWeight.w700;
      break;
  }
  return fontWeight;
}
