// import 'package:flutter/material.dart';
//
// ColorScheme? colorScheme;
//
// const lightColorScheme = ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFFB71C38),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFFFFDADA),
//   onPrimaryContainer: Color(0xFF40000B),
//   secondary: Color(0xFF765657),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFFFDADA),
//   onSecondaryContainer: Color(0xFF2C1516),
//   tertiary: Color(0xFF9A4523),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFFFDBCF),
//   onTertiaryContainer: Color(0xFF380D00),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFFFBFF),
//   onBackground: Color(0xFF201A1A),
//   surface: Color(0xFFFFFBFF),
//   onSurface: Color(0xFF201A1A),
//   surfaceVariant: Color(0xFFF4DDDD),
//   onSurfaceVariant: Color(0xFF524343),
//   outline: Color(0xFF857373),
//   onInverseSurface: Color(0xFFFBEEED),
//   inverseSurface: Color(0xFF362F2F),
//   inversePrimary: Color(0xFFFFB3B4),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFB71C38),
// );
//
// const darkColorScheme = ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFFFFB3B4),
//   onPrimary: Color(0xFF680017),
//   primaryContainer: Color(0xFF920025),
//   onPrimaryContainer: Color(0xFFFFDADA),
//   secondary: Color(0xFFE6BDBD),
//   onSecondary: Color(0xFF44292A),
//   secondaryContainer: Color(0xFF5D3F40),
//   onSecondaryContainer: Color(0xFFFFDADA),
//   tertiary: Color(0xFFFFB59B),
//   onTertiary: Color(0xFF5B1A00),
//   tertiaryContainer: Color(0xFF7B2E0E),
//   onTertiaryContainer: Color(0xFFFFDBCF),
//   error: Color(0xFFFFB4AB),
//   errorContainer: Color(0xFF93000A),
//   onError: Color(0xFF690005),
//   onErrorContainer: Color(0xFFFFDAD6),
//   background: Color(0xFF201A1A),
//   onBackground: Color(0xFFECE0DF),
//   surface: Color(0xFF201A1A),
//   onSurface: Color(0xFFECE0DF),
//   surfaceVariant: Color(0xFF524343),
//   onSurfaceVariant: Color(0xFFD7C1C1),
//   outline: Color(0xFF9F8C8C),
//   onInverseSurface: Color(0xFF201A1A),
//   inverseSurface: Color(0xFFECE0DF),
//   inversePrimary: Color(0xFFB71C38),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFFFB3B4),
// );
//
// ThemeData changeColorOnDarkMode(ThemeData themeData) {
//   if (themeData ==
//       ThemeData(
//           brightness: Brightness.light,
//           useMaterial3: true,
//           colorSchemeSeed: Color(0xFFDE0011))) {
//     colorScheme = lightColorScheme;
//   } else {
//     colorScheme = darkColorScheme;
//   }
//   return themeData;
// }

import 'package:flutter/material.dart';

ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Color(0xFFDE0011));
