import 'package:flutter/material.dart';

FontWeight? fontWeight;
const regular = 'regular';
const medium = 'medium';
const bold = 'bold';

TextStyle bodyLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 16,
    );

TextStyle bodyMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 15,
    );

TextStyle bodySmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 12,
    );

TextStyle displayLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 58,
    );
TextStyle displayMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 46,
    );
TextStyle displaySmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 36,
    );

TextStyle headLineLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 32,
    );
TextStyle headLineMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 28,
    );
TextStyle headLineSmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 24,
    );

TextStyle labelLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 14,
    );
TextStyle labelMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 12,
    );
TextStyle labelSmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 10,
    );

TextStyle titleLarge(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 22,
    );
TextStyle titleMedium(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 16,
    );
TextStyle titleSmall(FontWeight weight, Color color) => TextStyle(
      color: color,
      fontWeight: weight,
      fontSize: 14,
    );
