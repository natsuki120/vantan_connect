import 'package:flutter/material.dart';
import 'badge_icon.dart';

Widget countZero() => const BadgeIcon(icon: Icon(Icons.mail));

Widget countOneHundred() => const BadgeIcon(
      icon: Icon(Icons.mail),
      badgeCount: 100,
    );
